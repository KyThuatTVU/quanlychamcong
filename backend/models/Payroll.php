<?php
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/Employee.php';

class Payroll {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    /**
     * Tính toán hoặc cập nhật bảng lương tháng cho toàn bộ nhân sự 1 chi nhánh
     * Áp dụng chính xác 100% công thức từ file Excel hiện tại
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

        // Lấy cấu hình tham số của chi nhánh
        $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
        $cfgStmt->execute([':branch_id' => $branchId]);
        $config = $cfgStmt->fetch() ?: [
            'standard_work_days' => 26,
            'lunch_allowance' => 25000,
            'default_ot_rate' => 120000
        ];
        $stdDays = (int)($config['standard_work_days'] ?: 26);
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

            // Lấy thông tin điều chỉnh lương (thưởng / khấu trừ) nếu đã có
            $prevStmt = $this->db->prepare("SELECT bonus, deductions, note FROM monthly_payroll WHERE employee_id = :emp_id AND month = :m AND year = :y");
            $prevStmt->execute([':emp_id' => $empId, ':m' => $month, ':y' => $year]);
            $prevPayroll = $prevStmt->fetch() ?: ['bonus' => 0, 'deductions' => 0, 'note' => ''];

            $bonus = (float)($prevPayroll['bonus'] ?? 0);
            $deductions = (float)($prevPayroll['deductions'] ?? 0);
            $note = $prevPayroll['note'] ?? '';

            if ($emp['salary_type'] === 'FIXED') {
                // TỔNG HỢP LƯƠNG CỨNG
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
                    if (!empty($a['is_overtime'])) {
                        $otCount++;
                    }
                    $otH = (float)($a['ot_salary_hours'] ?: $a['ot_hours']);
                    if ($otH > 0) {
                        $totalOtHours += $otH;
                    }
                    $lateM = (int)($a['late_minutes'] ?? 0);
                    if ($lateM > 0) {
                        $lateCount++;
                        $totalLateMinutes += $lateM;
                    }
                }

                $baseSalary = (float)$emp['base_salary'];
                $otRate = (float)($emp['overtime_rate'] ?: $config['default_ot_rate']);
                
                // Công thức Excel: Lương theo ngày công = (Lương cơ bản / 26) * Ngày công thực tế
                $salaryByDays = $stdDays > 0 ? round(($baseSalary / $stdDays) * $totalDaysX) : 0;
                // Tiền tăng ca
                $otPay = round($totalOtHours * $otRate);
                // Phụ cấp cơm: 25k * số ngày công X
                $lunchPay = round($totalDaysX * $lunchRate);
                // Chuyên cần & Bán trú
                $attAllowance = (float)$emp['attendance_allowance'];
                $boardPay = (float)$emp['boarding_allowance'];

                $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $lunchPay + $bonus;
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
                    'base_salary' => $baseSalary,
                    'salary_by_days' => $salaryByDays,
                    'salary_by_slots' => 0,
                    'ot_pay' => $otPay,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'lunch_allowance' => $lunchPay,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'note' => $note
                ]);

                $results[] = array_merge($emp, [
                    'total_days_x' => $totalDaysX,
                    'total_ot_hours' => $totalOtHours,
                    'ot_count' => $otCount,
                    'late_count' => $lateCount,
                    'total_late_minutes' => $totalLateMinutes,
                    'salary_by_days' => $salaryByDays,
                    'ot_pay' => $otPay,
                    'lunch_allowance' => $lunchPay,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary
                ]);
            } else {
                // TỔNG HỢP LƯƠNG THEO GIỜ / THEO CA
                $totalSlots = 0.0;
                $boardingDays = 0;

                foreach ($attendanceList as $a) {
                    $slots = (float)($a['actual_slots'] ?: $a['total_slots']);
                    $totalSlots += $slots;
                    if (!empty($a['has_boarding'])) {
                        $boardingDays++;
                    }
                }

                $slotRate = (float)$emp['hourly_rate'];
                $boardRate = (float)$emp['boarding_allowance'];

                // Tiền lương theo ca
                $salaryBySlots = round($totalSlots * $slotRate);
                // Phụ cấp bán trú: Số ngày BT * Đơn giá BT
                $boardPay = round($boardingDays * $boardRate);
                $attAllowance = (float)$emp['attendance_allowance'];

                $totalIncome = $salaryBySlots + $boardPay + $attAllowance + $bonus;
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
                    'base_salary' => 0,
                    'salary_by_days' => 0,
                    'salary_by_slots' => $salaryBySlots,
                    'ot_pay' => 0,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'lunch_allowance' => 0,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary,
                    'note' => $note
                ]);

                $results[] = array_merge($emp, [
                    'total_slots' => $totalSlots,
                    'total_boarding_days' => $boardingDays,
                    'salary_by_slots' => $salaryBySlots,
                    'boarding_pay' => $boardPay,
                    'bonus' => $bonus,
                    'total_income' => $totalIncome,
                    'deductions' => $deductions,
                    'net_salary' => $netSalary
                ]);
            }
        }

        return $results;
    }

    private function savePayrollRecord(array $d): void {
        $sql = "INSERT INTO monthly_payroll (
            employee_id, month, year, total_days_x, total_ot_hours, ot_count,
            total_slots, total_boarding_days, late_count, total_late_minutes,
            base_salary, salary_by_days, salary_by_slots, ot_pay, boarding_pay,
            attendance_allowance, lunch_allowance, bonus, total_income, deductions, net_salary, note
        ) VALUES (
            :employee_id, :month, :year, :total_days_x, :total_ot_hours, :ot_count,
            :total_slots, :total_boarding_days, :late_count, :total_late_minutes,
            :base_salary, :salary_by_days, :salary_by_slots, :ot_pay, :boarding_pay,
            :attendance_allowance, :lunch_allowance, :bonus, :total_income, :deductions, :net_salary, :note
        ) ON DUPLICATE KEY UPDATE
            total_days_x = VALUES(total_days_x),
            total_ot_hours = VALUES(total_ot_hours),
            ot_count = VALUES(ot_count),
            total_slots = VALUES(total_slots),
            total_boarding_days = VALUES(total_boarding_days),
            late_count = VALUES(late_count),
            total_late_minutes = VALUES(total_late_minutes),
            base_salary = VALUES(base_salary),
            salary_by_days = VALUES(salary_by_days),
            salary_by_slots = VALUES(salary_by_slots),
            ot_pay = VALUES(ot_pay),
            boarding_pay = VALUES(boarding_pay),
            attendance_allowance = VALUES(attendance_allowance),
            lunch_allowance = VALUES(lunch_allowance),
            bonus = VALUES(bonus),
            total_income = VALUES(total_income),
            deductions = VALUES(deductions),
            net_salary = VALUES(net_salary),
            note = VALUES(note)";

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
            ':base_salary' => $d['base_salary'],
            ':salary_by_days' => $d['salary_by_days'],
            ':salary_by_slots' => $d['salary_by_slots'],
            ':ot_pay' => $d['ot_pay'],
            ':boarding_pay' => $d['boarding_pay'],
            ':attendance_allowance' => $d['attendance_allowance'],
            ':lunch_allowance' => $d['lunch_allowance'],
            ':bonus' => $d['bonus'],
            ':total_income' => $d['total_income'],
            ':deductions' => $d['deductions'],
            ':net_salary' => $d['net_salary'],
            ':note' => $d['note']
        ]);
    }

    /**
     * Lấy danh sách bảng lương tháng của chi nhánh (nếu chưa có thì tự động tính lần đầu)
     */
    public function getMonthlyList(int $branchId, string $salaryType, int $month, int $year, bool $forceRecalculate = false): array {
        if ($forceRecalculate) {
            return $this->calculateMonth($branchId, $salaryType, $month, $year);
        }

        $stmt = $this->db->prepare("
            SELECT p.*, e.employee_code, e.full_name, e.position, e.phone, e.salary_type, e.time_frame, 
                   e.hourly_rate as emp_hourly_rate, e.overtime_rate as emp_ot_rate
            FROM monthly_payroll p
            JOIN employees e ON p.employee_id = e.id
            WHERE e.branch_id = :branch_id 
              AND e.salary_type = :salary_type
              AND p.month = :month 
              AND p.year = :year
            ORDER BY e.employee_code ASC
        ");
        $stmt->execute([
            ':branch_id' => $branchId,
            ':salary_type' => $salaryType,
            ':month' => $month,
            ':year' => $year
        ]);
        $rows = $stmt->fetchAll();

        // Nếu tháng này chưa có bản ghi nào, tự động tính toán lần đầu
        if (empty($rows)) {
            return $this->calculateMonth($branchId, $salaryType, $month, $year);
        }

        return $rows;
    }

    /**
     * Thêm hoặc Sửa bản ghi tính lương thủ công
     */
    public function saveManualPayroll(array $d): array {
        $empId = (int)$d['employee_id'];
        $month = (int)$d['month'];
        $year = (int)$d['year'];

        $empModel = new Employee();
        $emp = $empModel->getById($empId);
        if (!$emp) {
            throw new Exception("Không tìm thấy giáo viên ID $empId");
        }

        $salaryType = $d['salary_type'] ?? $emp['salary_type'];

        // Lấy config chi nhánh để lấy đơn giá cơm và ngày chuẩn nếu cần
        $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
        $cfgStmt->execute([':branch_id' => (int)$emp['branch_id']]);
        $config = $cfgStmt->fetch() ?: ['standard_work_days' => 26, 'lunch_allowance' => 25000, 'default_ot_rate' => 120000];
        $stdDays = (int)($config['standard_work_days'] ?: 26);
        $lunchRate = (float)($config['lunch_allowance'] ?: 25000);

        if ($salaryType === 'FIXED') {
            $baseSalary = isset($d['base_salary']) ? (float)$d['base_salary'] : (float)$emp['base_salary'];
            $totalDaysX = isset($d['total_days_x']) ? (float)$d['total_days_x'] : 0.0;
            $otHours = isset($d['total_ot_hours']) ? (float)$d['total_ot_hours'] : 0.0;
            $otPay = isset($d['ot_pay']) ? (float)$d['ot_pay'] : 0.0;
            $boardPay = isset($d['boarding_pay']) ? (float)$d['boarding_pay'] : 0.0;
            $attAllowance = isset($d['attendance_allowance']) ? (float)$d['attendance_allowance'] : 0.0;

            // Tính lương ngày công nếu chưa nhập
            $salaryByDays = isset($d['salary_by_days']) ? (float)$d['salary_by_days'] : ($stdDays > 0 ? round(($baseSalary / $stdDays) * $totalDaysX) : 0);
            // Tiền cơm: 25k * ngày công X
            $lunchPay = isset($d['lunch_allowance']) ? (float)$d['lunch_allowance'] : round($totalDaysX * $lunchRate);
            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';

            $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $lunchPay + $bonus;
            $netSalary = isset($d['net_salary']) ? (float)$d['net_salary'] : max(0, $totalIncome - $deductions);

            $this->savePayrollRecord([
                'employee_id' => $empId,
                'month' => $month,
                'year' => $year,
                'total_days_x' => $totalDaysX,
                'total_ot_hours' => $otHours,
                'ot_count' => isset($d['ot_count']) ? (int)$d['ot_count'] : ($otHours > 0 ? 1 : 0),
                'total_slots' => 0,
                'total_boarding_days' => 0,
                'late_count' => isset($d['late_count']) ? (int)$d['late_count'] : 0,
                'total_late_minutes' => isset($d['total_late_minutes']) ? (int)$d['total_late_minutes'] : 0,
                'base_salary' => $baseSalary,
                'salary_by_days' => $salaryByDays,
                'salary_by_slots' => 0,
                'ot_pay' => $otPay,
                'boarding_pay' => $boardPay,
                'attendance_allowance' => $attAllowance,
                'lunch_allowance' => $lunchPay,
                'bonus' => $bonus,
                'total_income' => $totalIncome,
                'deductions' => $deductions,
                'net_salary' => $netSalary,
                'note' => $note
            ]);
        } else {
            // HOURLY
            $totalSlots = isset($d['total_slots']) ? (float)$d['total_slots'] : 0.0;
            $hourlyRate = isset($d['hourly_rate']) ? (float)$d['hourly_rate'] : (float)($emp['hourly_rate'] ?: 120000);
            $salaryBySlots = isset($d['salary_by_slots']) ? (float)$d['salary_by_slots'] : round($totalSlots * $hourlyRate);
            $boardingDays = isset($d['total_boarding_days']) ? (int)$d['total_boarding_days'] : 0;
            $boardRate = (float)($emp['boarding_allowance'] ?: 30000);
            $boardPay = isset($d['boarding_pay']) ? (float)$d['boarding_pay'] : round($boardingDays * $boardRate);
            $attAllowance = isset($d['attendance_allowance']) ? (float)$d['attendance_allowance'] : 0.0;
            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';

            $totalIncome = $salaryBySlots + $boardPay + $attAllowance + $bonus;
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
                'base_salary' => 0,
                'salary_by_days' => 0,
                'salary_by_slots' => $salaryBySlots,
                'ot_pay' => 0,
                'boarding_pay' => $boardPay,
                'attendance_allowance' => $attAllowance,
                'lunch_allowance' => 0,
                'bonus' => $bonus,
                'total_income' => $totalIncome,
                'deductions' => $deductions,
                'net_salary' => $netSalary,
                'note' => $note
            ]);
        }

        return $this->getPayslip($empId, $month, $year) ?: [];
    }

    /**
     * Xóa 1 bản ghi lương tháng
     */
    public function deletePayrollRecord(int $id = 0, int $employeeId = 0, int $month = 0, int $year = 0): bool {
        if ($id > 0) {
            $stmt = $this->db->prepare("DELETE FROM monthly_payroll WHERE id = :id");
            return $stmt->execute([':id' => $id]);
        }
        if ($employeeId > 0 && $month > 0 && $year > 0) {
            $stmt = $this->db->prepare("DELETE FROM monthly_payroll WHERE employee_id = :emp_id AND month = :m AND year = :y");
            return $stmt->execute([':emp_id' => $employeeId, ':m' => $month, ':y' => $year]);
        }
        return false;
    }

    /**
     * Lấy chi tiết phiếu lương của 1 nhân viên
     */
    public function getPayslip(int $employeeId, int $month, int $year): ?array {
        $stmt = $this->db->prepare("
            SELECT p.*, e.employee_code, e.full_name, e.position, e.phone, e.salary_type, e.time_frame,
                   b.name as branch_name, b.address as branch_address
            FROM monthly_payroll p
            JOIN employees e ON p.employee_id = e.id
            JOIN branches b ON e.branch_id = b.id
            WHERE p.employee_id = :emp_id AND p.month = :m AND p.year = :y
            LIMIT 1
        ");
        $stmt->execute([':emp_id' => $employeeId, ':m' => $month, ':y' => $year]);
        $res = $stmt->fetch();
        return $res ?: null;
    }
}
