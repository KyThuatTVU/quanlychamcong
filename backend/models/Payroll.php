<?php
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/Employee.php';

class Payroll {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
        $this->ensureSchema();
    }

    private function ensureSchema(): void {
        static $checked = false;
        if ($checked) return;
        $checked = true;

        try {
            $cols = $this->db->query("SHOW COLUMNS FROM monthly_payroll")->fetchAll(PDO::FETCH_COLUMN);
            if (!in_array('standard_work_days', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN standard_work_days DECIMAL(4,1) DEFAULT 26.0 COMMENT 'Ngày chuẩn áp dụng' AFTER total_boarding_days");
            }
            if (!in_array('daily_salary_rate', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN daily_salary_rate DECIMAL(12,2) DEFAULT 0 COMMENT 'Lương / ngày' AFTER salary_by_days");
            }
            if (!in_array('travel_allowance', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN travel_allowance DECIMAL(12,2) DEFAULT 0 COMMENT 'Thưởng đi lại' AFTER lunch_allowance");
            }
            if (!in_array('director_review', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN director_review TEXT NULL COMMENT 'Nhận xét của Giám đốc' AFTER note");
            }
            // Đảm bảo số ca và tăng ca hỗ trợ 2 số thập phân (ví dụ 0.67 ca, 1.33 ca)
            $this->db->exec("ALTER TABLE monthly_payroll MODIFY COLUMN ot_count DECIMAL(5,2) DEFAULT 0 COMMENT 'Số ca tăng ca'");
            $this->db->exec("ALTER TABLE monthly_payroll MODIFY COLUMN total_slots DECIMAL(6,2) DEFAULT 0 COMMENT 'Tổng số ca dạy'");
        } catch (Throwable $e) {}
    }

    /**
     * Tính toán hoặc cập nhật bảng lương tháng cho toàn bộ nhân sự 1 chi nhánh
     * Áp dụng chính xác 100% công thức từ file mẫu thực tế của HappyKids
     */
    public function calculateMonth(int $branchId, string $salaryType, int $month, int $year): array {
        $empModel = new Employee();
        $employees = $empModel->getList($branchId, $salaryType, 'ACTIVE');

        if (empty($employees)) {
            return [];
        }

        $startDate = sprintf('%04d-%02d-01', $year, $month);
        $daysInMonth = (int)date('t', strtotime($startDate));
        $endDate = sprintf('%04d-%02d-%02d', $year, $month, $daysInMonth);

        // Lấy cấu hình tham số cơ sở của chi nhánh
        $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
        $cfgStmt->execute([':branch_id' => $branchId]);
        $config = $cfgStmt->fetch() ?: [
            'standard_work_days' => 26,
            'lunch_allowance' => 25000,
            'default_ot_rate' => 150000,
            'default_slot_rate' => 120000
        ];
        $branchStdDays = (float)($config['standard_work_days'] ?: 26);
        $lunchRate = (float)($config['lunch_allowance'] ?: 25000);

        $results = [];

        foreach ($employees as $emp) {
            $empId = (int)$emp['id'];

            // Lấy toàn bộ record chấm công trong tháng của nhân viên
            $attStmt = $this->db->prepare("
                SELECT * FROM daily_attendance 
                WHERE employee_id = :emp_id AND work_date BETWEEN :start_date AND :end_date
            ");
            $attStmt->execute([
                ':emp_id' => $empId,
                ':start_date' => $startDate,
                ':end_date' => $endDate
            ]);
            $attendanceList = $attStmt->fetchAll();

            // Lấy thông tin điều chỉnh lương (thưởng / khấu trừ / nhận xét / chuyên cần) nếu đã lưu trước đó
            $prevStmt = $this->db->prepare("SELECT bonus, deductions, note, director_review, attendance_allowance FROM monthly_payroll WHERE employee_id = :emp_id AND month = :m AND year = :y");
            $prevStmt->execute([':emp_id' => $empId, ':m' => $month, ':y' => $year]);
            $prevPayroll = $prevStmt->fetch() ?: ['bonus' => 0, 'deductions' => 0, 'note' => '', 'director_review' => '', 'attendance_allowance' => null];

            $bonus = (float)($prevPayroll['bonus'] ?? 0);
            $deductions = (float)($prevPayroll['deductions'] ?? 0);
            $note = $prevPayroll['note'] ?? '';
            $directorReview = $prevPayroll['director_review'] ?? ($emp['notes'] ?? '');

            // QUY TẮC CHUYÊN CẦN:
            // Ưu tiên giá trị đã lưu trong bảng lương tháng; nếu chưa có thì lấy mức phụ cấp chuyên cần trong hồ sơ giáo viên
            $attAllowance = (isset($prevPayroll['attendance_allowance']) && $prevPayroll['attendance_allowance'] !== null && (float)$prevPayroll['attendance_allowance'] > 0)
                ? (float)$prevPayroll['attendance_allowance']
                : (float)($emp['attendance_allowance'] ?? 0.0);

            if ($emp['salary_type'] === 'FIXED') {
                // TỔNG HỢP LƯƠNG CỐ ĐỊNH
                $totalDaysX = 0.0;
                $totalOtHours = 0.0;
                $otCount = 0;
                $lateCount = 0;
                $totalLateMinutes = 0;

                foreach ($attendanceList as $a) {
                    $sym = trim($a['salary_symbol'] ?? $a['work_symbol']);
                    if (in_array($sym, ['X', 'X + TC', 'X+TC'])) {
                        $totalDaysX += 1.0;
                    }
                    $isRowOt = in_array($sym, ['X + TC', 'X+TC']) || (!empty($a['is_overtime']) && !in_array($sym, ['P', 'K', 'Thiếu', '-']));
                    if ($isRowOt) {
                        $otH = (float)($a['ot_salary_hours'] ?: $a['ot_hours']);
                        if ($otH <= 0) {
                            $otH = 1.50; // Mặc định 1 ca = 1.50h (90 phút)
                        }
                        // Quy đổi số ca TC: 1.5h = 1 ca, 3h = 2 ca
                        $slotsInDay = round($otH / 1.5, 1);
                        if ($slotsInDay < 1) $slotsInDay = 1.0;
                        $otCount += $slotsInDay;
                        $totalOtHours += $otH;
                    }
                    $lateM = (int)($a['late_minutes'] ?? 0);
                    if ($lateM > 0) {
                        $lateCount++;
                        $totalLateMinutes += $lateM;
                    }
                }

                $baseSalary = (float)$emp['base_salary'];
                // Ngày công chuẩn riêng theo hợp đồng (VD: cô Linh 21 ngày, các cô khác 26 ngày)
                $empStdDays = !empty($emp['standard_work_days']) ? (float)$emp['standard_work_days'] : $branchStdDays;
                if ($empStdDays <= 0) $empStdDays = 26.0;

                // Lương 1 ngày: (Lương cơ bản / Ngày chuẩn riêng)
                $dailySalaryRate = round($baseSalary / $empStdDays, 2);

                // Lương theo ngày công thực tế (X): nếu làm đủ ngày chuẩn thì = đúng Lương cơ bản
                $salaryByDays = ($totalDaysX == $empStdDays) ? $baseSalary : round(($baseSalary / $empStdDays) * $totalDaysX);

                // Tiền tăng ca: Số ca TC * Đơn giá ca (mặc định 120.000đ/ca hoặc cấu hình riêng theo cô, ví dụ cô Hiền 100k/ca = 200k/2 ca)
                $otRate = (float)($emp['overtime_rate'] ?: ($config['default_ot_rate'] ?? 120000));
                $otPay = round($otCount * $otRate);

                // Phụ cấp cơm: 25k * số ngày công X (nếu có hưởng cơm, ngược lại 0đ)
                $hasLunch = !isset($emp['has_lunch_allowance']) || $emp['has_lunch_allowance'] == 1;
                $lunchPay = $hasLunch ? round($totalDaysX * $lunchRate) : 0;

                // Các khoản đãi ngộ cố định theo hồ sơ (Chuyên cần $attAllowance lấy từ đánh giá tháng)
                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);
                $boardPay = (float)($emp['boarding_allowance'] ?? 0);

                // Tổng thu = Lương công + Tăng ca + Bán trú + Chuyên cần + Cơm + Thưởng đi lại + Thưởng khác
                $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $lunchPay + $travelAllowance + $bonus;
                $netSalary = max(0, $totalIncome - $deductions);

                // Lưu vào CSDL monthly_payroll
                $this->savePayrollRecord([
                    'employee_id' => $empId,
                    'month' => $month,
                    'year' => $year,
                    'total_days_x' => $totalDaysX,
                    'total_ot_hours' => $totalOtHours,
                    'ot_count' => $otCount,
                    'total_slots' => 0,
                    'total_boarding_days' => 0,
                    'late_count' => $lateCount,
                    'total_late_minutes' => $totalLateMinutes,
                    'standard_work_days' => $empStdDays,
                    'base_salary' => $baseSalary,
                    'salary_by_days' => $salaryByDays,
                    'daily_salary_rate' => $dailySalaryRate,
                    'salary_by_slots' => 0,
                    'ot_pay' => $otPay,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'lunch_allowance' => $lunchPay,
                    'travel_allowance' => $travelAllowance,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'note' => $note,
                    'director_review' => $directorReview
                ]);

                $results[] = array_merge($emp, [
                    'total_days_x' => $totalDaysX,
                    'total_ot_hours' => $totalOtHours,
                    'ot_count' => $otCount,
                    'late_count' => $lateCount,
                    'total_late_minutes' => $totalLateMinutes,
                    'standard_work_days' => $empStdDays,
                    'daily_salary_rate' => $dailySalaryRate,
                    'salary_by_days' => $salaryByDays,
                    'ot_pay' => $otPay,
                    'lunch_allowance' => $lunchPay,
                    'travel_allowance' => $travelAllowance,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'director_review' => $directorReview
                ]);
            } else {
                // TỔNG HỢP LƯƠNG THEO GIỜ / THEO CA
                $totalSlots = 0.0;
                $boardingDays = 0;

                foreach ($attendanceList as $a) {
                    // CHỈ TÍNH THEO SỐ CA THỰC TẾ ĐƯỢC QUẢN LÝ XÁC NHẬN (actual_slots)
                    $rawSlots = ($a['actual_slots'] !== null && $a['actual_slots'] !== '') ? str_replace(',', '.', (string)$a['actual_slots']) : '0';
                    $slots = round((float)$rawSlots, 2);
                    $totalSlots += $slots;
                    if (!empty($a['has_boarding'])) {
                        $boardingDays++;
                    }
                }
                $totalSlots = round($totalSlots, 2);

                $slotRate = (float)($emp['hourly_rate'] ?: ($config['default_slot_rate'] ?? 120000));
                $boardRate = (float)$emp['boarding_allowance'];

                // Tiền lương theo ca
                $salaryBySlots = round($totalSlots * $slotRate);
                // Phụ cấp bán trú: Số ngày BT * Đơn giá BT
                $boardPay = round($boardingDays * $boardRate);
                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);

                $totalIncome = $salaryBySlots + $boardPay + $attAllowance + $travelAllowance + $bonus;
                $netSalary = max(0, $totalIncome - $deductions);

                $this->savePayrollRecord([
                    'employee_id' => $empId,
                    'month' => $month,
                    'year' => $year,
                    'total_days_x' => 0,
                    'total_ot_hours' => 0,
                    'ot_count' => 0,
                    'total_slots' => $totalSlots,
                    'total_boarding_days' => $boardingDays,
                    'late_count' => 0,
                    'total_late_minutes' => 0,
                    'standard_work_days' => 26.0,
                    'base_salary' => 0,
                    'salary_by_days' => 0,
                    'daily_salary_rate' => 0,
                    'salary_by_slots' => $salaryBySlots,
                    'ot_pay' => 0,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'lunch_allowance' => 0,
                    'travel_allowance' => $travelAllowance,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'note' => $note,
                    'director_review' => $directorReview
                ]);

                $results[] = array_merge($emp, [
                    'total_slots' => $totalSlots,
                    'total_boarding_days' => $boardingDays,
                    'salary_by_slots' => $salaryBySlots,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'lunch_allowance' => 0,
                    'travel_allowance' => $travelAllowance,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'director_review' => $directorReview
                ]);
            }
        }

        return $results;
    }

    private function savePayrollRecord(array $d): void {
        $sql = "INSERT INTO monthly_payroll (
            employee_id, month, year, total_days_x, total_ot_hours, ot_count,
            total_slots, total_boarding_days, late_count, total_late_minutes,
            standard_work_days, base_salary, salary_by_days, daily_salary_rate, salary_by_slots, ot_pay, boarding_pay,
            attendance_allowance, lunch_allowance, travel_allowance, bonus, total_income, deductions, net_salary, note, director_review
        ) VALUES (
            :employee_id, :month, :year, :total_days_x, :total_ot_hours, :ot_count,
            :total_slots, :total_boarding_days, :late_count, :total_late_minutes,
            :standard_work_days, :base_salary, :salary_by_days, :daily_salary_rate, :salary_by_slots, :ot_pay, :boarding_pay,
            :attendance_allowance, :lunch_allowance, :travel_allowance, :bonus, :total_income, :deductions, :net_salary, :note, :director_review
        ) ON DUPLICATE KEY UPDATE
            total_days_x = VALUES(total_days_x),
            total_ot_hours = VALUES(total_ot_hours),
            ot_count = VALUES(ot_count),
            total_slots = VALUES(total_slots),
            total_boarding_days = VALUES(total_boarding_days),
            late_count = VALUES(late_count),
            total_late_minutes = VALUES(total_late_minutes),
            standard_work_days = VALUES(standard_work_days),
            base_salary = VALUES(base_salary),
            salary_by_days = VALUES(salary_by_days),
            daily_salary_rate = VALUES(daily_salary_rate),
            salary_by_slots = VALUES(salary_by_slots),
            ot_pay = VALUES(ot_pay),
            boarding_pay = VALUES(boarding_pay),
            attendance_allowance = VALUES(attendance_allowance),
            lunch_allowance = VALUES(lunch_allowance),
            travel_allowance = VALUES(travel_allowance),
            bonus = VALUES(bonus),
            total_income = VALUES(total_income),
            deductions = VALUES(deductions),
            net_salary = VALUES(net_salary),
            note = VALUES(note),
            director_review = VALUES(director_review)";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([
            ':employee_id' => $d['employee_id'],
            ':month' => $d['month'],
            ':year' => $d['year'],
            ':total_days_x' => $d['total_days_x'],
            ':total_ot_hours' => $d['total_ot_hours'],
            ':ot_count' => $d['ot_count'],
            ':total_slots' => $d['total_slots'],
            ':total_boarding_days' => $d['total_boarding_days'],
            ':late_count' => $d['late_count'],
            ':total_late_minutes' => $d['total_late_minutes'],
            ':standard_work_days' => $d['standard_work_days'] ?? 26.0,
            ':base_salary' => $d['base_salary'],
            ':salary_by_days' => $d['salary_by_days'],
            ':daily_salary_rate' => $d['daily_salary_rate'] ?? 0,
            ':salary_by_slots' => $d['salary_by_slots'],
            ':ot_pay' => $d['ot_pay'],
            ':boarding_pay' => $d['boarding_pay'],
            ':attendance_allowance' => $d['attendance_allowance'],
            ':lunch_allowance' => $d['lunch_allowance'],
            ':travel_allowance' => $d['travel_allowance'] ?? 0,
            ':bonus' => $d['bonus'],
            ':total_income' => $d['total_income'],
            ':deductions' => $d['deductions'],
            ':net_salary' => $d['net_salary'],
            ':note' => $d['note'] ?? '',
            ':director_review' => $d['director_review'] ?? ''
        ]);
    }

    public function getMonthlyList(int $branchId, string $salaryType, int $month, int $year, bool $forceRecalculate = false): array {
        if ($forceRecalculate) {
            return $this->calculateMonth($branchId, $salaryType, $month, $year);
        }
        $sql = "SELECT p.*, e.employee_code, e.full_name, e.position, e.salary_type,
                       e.base_salary AS emp_base_salary,
                       e.base_salary AS base_salary,
                       e.hourly_rate AS emp_hourly_rate,
                       e.attendance_allowance AS emp_att_allowance,
                       e.travel_allowance AS emp_travel_allowance,
                       e.has_lunch_allowance,
                       e.standard_work_days AS emp_std_days,
                       e.standard_work_days AS standard_work_days
                FROM monthly_payroll p
                JOIN employees e ON p.employee_id = e.id
                WHERE e.branch_id = :branch_id 
                  AND e.salary_type = :salary_type
                  AND p.month = :month 
                  AND p.year = :year
                ORDER BY e.employee_code ASC";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([
            ':branch_id' => $branchId,
            ':salary_type' => $salaryType,
            ':month' => $month,
            ':year' => $year
        ]);
        $rows = $stmt->fetchAll();
        foreach ($rows as &$r) {
            $std = (float)($r['standard_work_days'] ?: 26);
            $base = (float)$r['base_salary'];
            if ($std > 0 && $base > 0) {
                $r['daily_salary_rate'] = round($base / $std, 2);
            }
        }
        return $rows;
    }

    public function saveManualPayroll(array $d): bool {
        $empId = (int)($d['employee_id'] ?? 0);
        $month = (int)($d['month'] ?? 0);
        $year = (int)($d['year'] ?? 0);

        if (!$empId || !$month || !$year) {
            throw new Exception("Thiếu thông tin bắt buộc: employee_id, month, year");
        }

        $empModel = new Employee();
        $emp = $empModel->getById($empId);
        if (!$emp) {
            throw new Exception("Không tìm thấy giáo viên ID $empId");
        }

        $salaryType = $d['salary_type'] ?? $emp['salary_type'];

        // Lấy config chi nhánh để lấy đơn giá cơm và ngày chuẩn nếu cần
        $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
        $cfgStmt->execute([':branch_id' => (int)$emp['branch_id']]);
        $config = $cfgStmt->fetch() ?: ['standard_work_days' => 26, 'lunch_allowance' => 25000, 'default_ot_rate' => 150000];
        $branchStdDays = (float)($config['standard_work_days'] ?: 26);
        $lunchRate = (float)($config['lunch_allowance'] ?: 25000);

        if ($salaryType === 'FIXED') {
            $baseSalary = isset($d['base_salary']) ? (float)$d['base_salary'] : (float)$emp['base_salary'];
            $empStdDays = isset($d['standard_work_days']) ? (float)$d['standard_work_days'] : (!empty($emp['standard_work_days']) ? (float)$emp['standard_work_days'] : $branchStdDays);
            if ($empStdDays <= 0) $empStdDays = 26.0;

            $dailySalaryRate = round($baseSalary / $empStdDays, 2);
            $totalDaysX = isset($d['total_days_x']) ? (float)$d['total_days_x'] : 0.0;
            $otHours = isset($d['total_ot_hours']) ? (float)$d['total_ot_hours'] : 0.0;
            $otPay = isset($d['ot_pay']) ? (float)$d['ot_pay'] : 0.0;
            $boardPay = isset($d['boarding_pay']) ? (float)$d['boarding_pay'] : 0.0;
            // Chuyên cần nhận từ form sửa/đánh giá cuối tháng; nếu không truyền -> giữ 0.0
            $attAllowance = isset($d['attendance_allowance']) ? (float)$d['attendance_allowance'] : 0.0;
            $travelAllowance = isset($d['travel_allowance']) ? (float)$d['travel_allowance'] : (float)($emp['travel_allowance'] ?? 0);

            $salaryByDays = isset($d['salary_by_days']) 
                ? (float)$d['salary_by_days'] 
                : (($totalDaysX == $empStdDays) ? $baseSalary : round($dailySalaryRate * $totalDaysX));
            $hasLunch = !isset($emp['has_lunch_allowance']) || $emp['has_lunch_allowance'] == 1;
            $lunchPay = isset($d['lunch_allowance']) ? (float)$d['lunch_allowance'] : ($hasLunch ? round($totalDaysX * $lunchRate) : 0);

            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';
            $directorReview = $d['director_review'] ?? '';

            $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $lunchPay + $travelAllowance + $bonus;
            $netSalary = isset($d['net_salary']) ? (float)$d['net_salary'] : max(0, $totalIncome - $deductions);

            $this->savePayrollRecord([
                'employee_id' => $empId,
                'month' => $month,
                'year' => $year,
                'total_days_x' => $totalDaysX,
                'total_ot_hours' => $otHours,
                'ot_count' => isset($d['ot_count']) ? (float)$d['ot_count'] : ($otHours > 0 ? round($otHours / 1.5, 1) : 0),
                'total_slots' => 0,
                'total_boarding_days' => 0,
                'late_count' => isset($d['late_count']) ? (int)$d['late_count'] : 0,
                'total_late_minutes' => isset($d['total_late_minutes']) ? (int)$d['total_late_minutes'] : 0,
                'standard_work_days' => $empStdDays,
                'base_salary' => $baseSalary,
                'salary_by_days' => $salaryByDays,
                'daily_salary_rate' => $dailySalaryRate,
                'salary_by_slots' => 0,
                'ot_pay' => $otPay,
                'boarding_pay' => $boardPay,
                'attendance_allowance' => $attAllowance,
                'lunch_allowance' => $lunchPay,
                'travel_allowance' => $travelAllowance,
                'bonus' => $bonus,
                'total_income' => $totalIncome,
                'deductions' => $deductions,
                'net_salary' => $netSalary,
                'note' => $note,
                'director_review' => $directorReview
            ]);
        } else {
            // HOURLY
            $rawSlots = isset($d['total_slots']) ? str_replace(',', '.', (string)$d['total_slots']) : '0';
            $totalSlots = round((float)$rawSlots, 2);
            $hourlyRate = isset($d['hourly_rate']) ? (float)$d['hourly_rate'] : (float)($emp['hourly_rate'] ?: 120000);
            $salaryBySlots = isset($d['salary_by_slots']) ? (float)$d['salary_by_slots'] : round($totalSlots * $hourlyRate);
            $boardingDays = isset($d['total_boarding_days']) ? (int)$d['total_boarding_days'] : 0;
            $boardingPay = isset($d['boarding_pay']) ? (float)$d['boarding_pay'] : 0.0;
            $attAllowance = isset($d['attendance_allowance']) ? (float)$d['attendance_allowance'] : 0.0;
            $travelAllowance = isset($d['travel_allowance']) ? (float)$d['travel_allowance'] : 0.0;
            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';
            $directorReview = $d['director_review'] ?? '';

            $totalIncome = $salaryBySlots + $boardingPay + $attAllowance + $travelAllowance + $bonus;
            $netSalary = isset($d['net_salary']) ? (float)$d['net_salary'] : max(0, $totalIncome - $deductions);

            $this->savePayrollRecord([
                'employee_id' => $empId,
                'month' => $month,
                'year' => $year,
                'total_days_x' => 0,
                'total_ot_hours' => 0,
                'ot_count' => 0,
                'total_slots' => $totalSlots,
                'total_boarding_days' => $boardingDays,
                'late_count' => 0,
                'total_late_minutes' => 0,
                'standard_work_days' => 26.0,
                'base_salary' => 0,
                'salary_by_days' => 0,
                'daily_salary_rate' => 0,
                'salary_by_slots' => $salaryBySlots,
                'ot_pay' => 0,
                'boarding_pay' => $boardingPay,
                'attendance_allowance' => $attAllowance,
                'lunch_allowance' => 0,
                'travel_allowance' => $travelAllowance,
                'bonus' => $bonus,
                'total_income' => $totalIncome,
                'deductions' => $deductions,
                'net_salary' => $netSalary,
                'note' => $note,
                'director_review' => $directorReview
            ]);
        }

        return true;
    }

    public function deletePayrollRecord(int $empId, int $month, int $year): bool {
        $stmt = $this->db->prepare("DELETE FROM monthly_payroll WHERE employee_id = :id AND month = :m AND year = :y");
        return $stmt->execute([
            ':id' => $empId,
            ':m' => $month,
            ':y' => $year
        ]);
    }

    public function getPayslip(int $empId, int $month, int $year): ?array {
        $stmt = $this->db->prepare("
            SELECT p.*, 
                   e.employee_code, e.full_name, e.position, e.salary_type, e.phone, e.time_frame,
                   e.base_salary AS emp_base_salary,
                   e.base_salary AS base_salary,
                   e.hourly_rate AS emp_hourly_rate,
                   e.standard_work_days AS emp_std_days,
                   e.standard_work_days AS standard_work_days,
                   e.travel_allowance AS emp_travel_allowance,
                   e.has_lunch_allowance,
                   b.name AS branch_name, b.code AS branch_code
            FROM monthly_payroll p
            JOIN employees e ON p.employee_id = e.id
            JOIN branches b ON e.branch_id = b.id
            WHERE p.employee_id = :emp_id AND p.month = :month AND p.year = :year
            LIMIT 1
        ");
        $stmt->execute([
            ':emp_id' => $empId,
            ':month' => $month,
            ':year' => $year
        ]);
        $res = $stmt->fetch();
        if ($res) {
            $std = (float)($res['standard_work_days'] ?: 26);
            $base = (float)$res['base_salary'];
            if ($std > 0 && $base > 0) {
                $res['daily_salary_rate'] = round($base / $std, 2);
            }
        }
        return $res ?: null;
    }
}
