<?php
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/Employee.php';

class Attendance {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    /**
     * Lấy dữ liệu chấm công chi tiết theo 1 ngày cụ thể (Bảng chi tiết giờ vào/ra chuẩn như file Excel)
     */
    public function getDayAttendance(int $branchId, string $salaryType, string $workDate): array {
        $empModel = new Employee();
        $employees = $empModel->getList($branchId, $salaryType, 'ACTIVE');

        if (empty($employees)) {
            return [];
        }

        $sql = "SELECT a.* 
                FROM daily_attendance a
                JOIN employees e ON a.employee_id = e.id
                WHERE e.branch_id = :branch_id 
                  AND e.salary_type = :salary_type
                  AND a.work_date = :work_date";
        $stmt = $this->db->prepare($sql);
        $stmt->execute([
            ':branch_id' => $branchId,
            ':salary_type' => $salaryType,
            ':work_date' => $workDate
        ]);
        $records = $stmt->fetchAll();

        // Index by employee_id
        $attMap = [];
        foreach ($records as $r) {
            $attMap[$r['employee_id']] = $r;
        }

        // Merge with employee master list
        $result = [];
        foreach ($employees as $emp) {
            $empId = $emp['id'];
            $att = $attMap[$empId] ?? null;
            $emp['attendance'] = $att;
            $result[] = $emp;
        }

        return $result;
    }

    /**
     * Lấy dữ liệu chấm công cả tháng của 1 chi nhánh (Ma trận ngày 1 -> 31)
     */
    public function getMonthMatrix(int $branchId, string $salaryType, int $month, int $year): array {
        $empModel = new Employee();
        $employees = $empModel->getList($branchId, $salaryType, 'ACTIVE');

        if (empty($employees)) {
            return [];
        }

        $startDate = sprintf('%04d-%02d-01', $year, $month);
        $daysInMonth = (int)date('t', strtotime($startDate));
        $endDate = sprintf('%04d-%02d-%02d', $year, $month, $daysInMonth);

        // Lấy toàn bộ record chấm công trong tháng của chi nhánh
        $sql = "SELECT a.* 
                FROM daily_attendance a
                JOIN employees e ON a.employee_id = e.id
                WHERE e.branch_id = :branch_id 
                  AND e.salary_type = :salary_type
                  AND a.work_date BETWEEN :start_date AND :end_date";
        $stmt = $this->db->prepare($sql);
        $stmt->execute([
            ':branch_id' => $branchId,
            ':salary_type' => $salaryType,
            ':start_date' => $startDate,
            ':end_date' => $endDate
        ]);
        $records = $stmt->fetchAll();

        // Gom nhóm theo employee_id và day
        $matrix = [];
        foreach ($records as $r) {
            $empId = $r['employee_id'];
            $day = (int)date('j', strtotime($r['work_date']));
            $matrix[$empId][$day] = $r;
        }

        // Ghép vào danh sách nhân viên
        $result = [];
        foreach ($employees as $emp) {
            $empId = $emp['id'];
            $emp['attendance_days'] = $matrix[$empId] ?? [];
            $result[] = $emp;
        }

        return $result;
    }

    /**
     * Lưu hoặc cập nhật chấm công của 1 nhân viên trong 1 ngày cụ thể
     * Tự động tính toán số phút trễ, số giờ tăng ca hoặc quy đổi số ca dạy 90 phút
     */
    public function saveDailyRecord(array $data): array {
        $employeeId = (int)$data['employee_id'];
        $workDate = trim($data['work_date']);

        $empModel = new Employee();
        $emp = $empModel->getById($employeeId);
        if (!$emp) {
            throw new Exception("Không tìm thấy hồ sơ giáo viên ID $employeeId");
        }

        $salaryType = $emp['salary_type'];

        if ($salaryType === 'FIXED') {
            // XỬ LÝ LƯƠNG CỨNG
            $timeIn = !empty($data['time_in']) ? $data['time_in'] : null;
            $timeOut = !empty($data['time_out']) ? $data['time_out'] : null;
            $workSymbol = !empty($data['work_symbol']) ? trim($data['work_symbol']) : '-';
            $isOt = !empty($data['is_overtime']) ? 1 : 0;
            $notes = $data['notes'] ?? '';

            // Tính phút trễ
            $lateMinutes = 0;
            if ($timeIn && !empty($emp['default_time_in'])) {
                $secIn = strtotime("1970-01-01 $timeIn");
                $secDefIn = strtotime("1970-01-01 " . $emp['default_time_in']);
                if ($secIn > $secDefIn) {
                    $lateMinutes = (int)round(($secIn - $secDefIn) / 60);
                }
            }

            // Tính số giờ làm và tăng ca
            $otHours = 0.0;
            $workedHours = 0.0;
            $stdHours = (float)($emp['standard_hours'] ?: 8.0);

            if ($timeIn && $timeOut) {
                $secIn = strtotime("1970-01-01 $timeIn");
                $secOut = strtotime("1970-01-01 $timeOut");
                if ($secOut < $secIn) {
                    $secOut += 86400; // Qua đêm
                }
                $workedHours = ($secOut - $secIn) / 3600.0;
            }

            // NGHIỆP VỤ BẮT BUỘC: Không tự động xác định tăng ca chỉ từ giờ vào/ra hay làm quá giờ chuẩn.
            // Chỉ tính tăng ca khi người quản lý chủ động xác nhận ($isOt = 1) hoặc nhập số ca/giờ tăng ca.
            if ($isOt) {
                if (isset($data['ot_hours']) && $data['ot_hours'] !== '' && $data['ot_hours'] !== null && (float)$data['ot_hours'] > 0) {
                    $otHours = round((float)$data['ot_hours'], 2);
                } else {
                    $otHours = 1.50; // Mặc định 1 ca = 1.50h khi bật Có tăng ca
                }
            } else {
                $otHours = 0.0;
                $isOt = 0;
            }

            if ($isOt && $otHours > 0) {
                if ($workSymbol === '-' || empty($workSymbol) || $workSymbol === 'X') {
                    $workSymbol = 'X + TC';
                }
            } else {
                if ($workSymbol === 'X + TC' || $workSymbol === 'X+TC') {
                    $workSymbol = ($timeIn && $timeOut) ? 'X' : '-';
                } else if ($timeIn && $timeOut && ($workSymbol === '-' || empty($workSymbol))) {
                    $workSymbol = 'X';
                }
            }

            $salarySymbol = in_array($workSymbol, ['X', 'X + TC', 'P', 'K']) ? $workSymbol : '-';
            $otSalaryHours = ($isOt && $otHours > 0) ? $otHours : 0.0;
            $confirmStatus = ($timeIn && $timeOut || ($isOt && $otHours > 0) || $workSymbol !== '-') ? 'Đã xác nhận' : 'Chưa nhập';

            $sql = "INSERT INTO daily_attendance (
                employee_id, work_date, time_in, time_out, late_minutes, is_overtime,
                ot_hours, work_symbol, salary_symbol, ot_salary_hours, confirmation_status, notes
            ) VALUES (
                :employee_id, :work_date, :time_in, :time_out, :late_minutes, :is_overtime,
                :ot_hours, :work_symbol, :salary_symbol, :ot_salary_hours, :confirmation_status, :notes
            ) ON DUPLICATE KEY UPDATE
                time_in = VALUES(time_in),
                time_out = VALUES(time_out),
                late_minutes = VALUES(late_minutes),
                is_overtime = VALUES(is_overtime),
                ot_hours = VALUES(ot_hours),
                work_symbol = VALUES(work_symbol),
                salary_symbol = VALUES(salary_symbol),
                ot_salary_hours = VALUES(ot_salary_hours),
                confirmation_status = VALUES(confirmation_status),
                notes = VALUES(notes)";

            $stmt = $this->db->prepare($sql);
            $stmt->execute([
                ':employee_id' => $employeeId,
                ':work_date' => $workDate,
                ':time_in' => $timeIn,
                ':time_out' => $timeOut,
                ':late_minutes' => $lateMinutes,
                ':is_overtime' => $isOt,
                ':ot_hours' => $otHours,
                ':work_symbol' => $workSymbol,
                ':salary_symbol' => $salarySymbol,
                ':ot_salary_hours' => $otSalaryHours,
                ':confirmation_status' => $confirmStatus,
                ':notes' => $notes
            ]);

            // Tự động đồng bộ ngay sang bảng tổng hợp lương tháng
            $this->syncMonthlyPayroll($employeeId, $workDate);

            return [
                'employee_id' => $employeeId,
                'work_date' => $workDate,
                'work_symbol' => $workSymbol,
                'late_minutes' => $lateMinutes,
                'ot_hours' => $otHours,
                'is_overtime' => $isOt,
                'status' => $confirmStatus
            ];
        } else {
            // XỬ LÝ LƯƠNG THEO GIỜ (3 CA)
            $mIn = !empty($data['morning_in']) ? $data['morning_in'] : null;
            $mOut = !empty($data['morning_out']) ? $data['morning_out'] : null;
            $aIn = !empty($data['afternoon_in']) ? $data['afternoon_in'] : null;
            $aOut = !empty($data['afternoon_out']) ? $data['afternoon_out'] : null;
            $eIn = !empty($data['evening_in']) ? $data['evening_in'] : null;
            $eOut = !empty($data['evening_out']) ? $data['evening_out'] : null;
            $hasBoarding = !empty($data['has_boarding']) ? 1 : 0;
            $notes = $data['notes'] ?? '';

            // Tính phút từng ca
            $calcMins = function($in, $out) {
                if (!$in || !$out) return 0;
                $diff = (strtotime("1970-01-01 $out") - strtotime("1970-01-01 $in")) / 60;
                return max(0, (int)round($diff));
            };

            $mMins = $calcMins($mIn, $mOut);
            $aMins = $calcMins($aIn, $aOut);
            $eMins = $calcMins($eIn, $eOut);
            $totMins = $mMins + $aMins + $eMins;

            // Quy đổi số ca theo 90 phút (Chỉ là thời gian hiện diện tham khảo, KHÔNG tự quyết định ca tính lương)
            $totSlots = round($totMins / 90.0, 2);
            // SỐ CA THỰC TẾ ĐƯỢC TÍNH LƯƠNG: Căn cứ vào số ca thực tế do người quản lý xác nhận
            $actualSlots = (isset($data['actual_slots']) && $data['actual_slots'] !== '' && $data['actual_slots'] !== null)
                ? (float)$data['actual_slots']
                : null;
            $confirmStatus = ($totMins > 0 || $hasBoarding || $actualSlots !== null) ? 'Đã xác nhận' : 'Chưa nhập';

            $sql = "INSERT INTO daily_attendance (
                employee_id, work_date, morning_in, morning_out, morning_minutes,
                afternoon_in, afternoon_out, afternoon_minutes, evening_in, evening_out, evening_minutes,
                total_minutes, total_slots, has_boarding, actual_slots, confirmation_status, notes
            ) VALUES (
                :employee_id, :work_date, :morning_in, :morning_out, :morning_minutes,
                :afternoon_in, :afternoon_out, :afternoon_minutes, :evening_in, :evening_out, :evening_minutes,
                :total_minutes, :total_slots, :has_boarding, :actual_slots, :confirmation_status, :notes
            ) ON DUPLICATE KEY UPDATE
                morning_in = VALUES(morning_in),
                morning_out = VALUES(morning_out),
                morning_minutes = VALUES(morning_minutes),
                afternoon_in = VALUES(afternoon_in),
                afternoon_out = VALUES(afternoon_out),
                afternoon_minutes = VALUES(afternoon_minutes),
                evening_in = VALUES(evening_in),
                evening_out = VALUES(evening_out),
                evening_minutes = VALUES(evening_minutes),
                total_minutes = VALUES(total_minutes),
                total_slots = VALUES(total_slots),
                has_boarding = VALUES(has_boarding),
                actual_slots = VALUES(actual_slots),
                confirmation_status = VALUES(confirmation_status),
                notes = VALUES(notes)";

            $stmt = $this->db->prepare($sql);
            $stmt->execute([
                ':employee_id' => $employeeId,
                ':work_date' => $workDate,
                ':morning_in' => $mIn,
                ':morning_out' => $mOut,
                ':morning_minutes' => $mMins,
                ':afternoon_in' => $aIn,
                ':afternoon_out' => $aOut,
                ':afternoon_minutes' => $aMins,
                ':evening_in' => $eIn,
                ':evening_out' => $eOut,
                ':evening_minutes' => $eMins,
                ':total_minutes' => $totMins,
                ':total_slots' => $totSlots,
                ':has_boarding' => $hasBoarding,
                ':actual_slots' => $actualSlots,
                ':confirmation_status' => $confirmStatus,
                ':notes' => $notes
            ]);

            // Tự động đồng bộ ngay sang bảng tổng hợp lương tháng
            $this->syncMonthlyPayroll($employeeId, $workDate);

            return [
                'employee_id' => $employeeId,
                'work_date' => $workDate,
                'total_minutes' => $totMins,
                'total_slots' => $totSlots,
                'has_boarding' => $hasBoarding,
                'actual_slots' => $actualSlots,
                'status' => $confirmStatus
            ];
        }
    }

    /**
     * Đồng bộ tức thì chấm công tháng của nhân viên sang bảng monthly_payroll
     * Đảm bảo Tổng ca được tính chính xác từ số ca thực tế đã xác nhận (actual_slots)
     */
    public function syncMonthlyPayroll(int $employeeId, string $workDate): void {
        try {
            $month = (int)date('n', strtotime($workDate));
            $year = (int)date('Y', strtotime($workDate));
            $startDate = sprintf('%04d-%02d-01', $year, $month);
            $daysInMonth = (int)date('t', strtotime($startDate));
            $endDate = sprintf('%04d-%02d-%02d', $year, $month, $daysInMonth);

            $empModel = new Employee();
            $emp = $empModel->getById($employeeId);
            if (!$emp) return;

            $branchId = (int)$emp['branch_id'];
            $salaryType = $emp['salary_type'];

            // Lấy config chi nhánh
            $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
            $cfgStmt->execute([':branch_id' => $branchId]);
            $config = $cfgStmt->fetch() ?: [
                'standard_work_days' => 26,
                'lunch_allowance' => 25000,
                'default_ot_rate' => 120000,
                'default_slot_rate' => 120000
            ];
            $branchStdDays = (float)($config['standard_work_days'] ?: 26);
            $lunchRate = (float)($config['lunch_allowance'] ?: 25000);

            // Lấy điều chỉnh nếu đã lưu trước đó trong monthly_payroll
            $prevStmt = $this->db->prepare("SELECT bonus, deductions, note, director_review, attendance_allowance FROM monthly_payroll WHERE employee_id = :emp_id AND month = :m AND year = :y");
            $prevStmt->execute([':emp_id' => $employeeId, ':m' => $month, ':y' => $year]);
            $prevPayroll = $prevStmt->fetch() ?: ['bonus' => 0, 'deductions' => 0, 'note' => '', 'director_review' => '', 'attendance_allowance' => null];

            $bonus = (float)($prevPayroll['bonus'] ?? 0);
            $deductions = (float)($prevPayroll['deductions'] ?? 0);
            $note = $prevPayroll['note'] ?? '';
            $directorReview = $prevPayroll['director_review'] ?? ($emp['notes'] ?? '');
            $attAllowance = (isset($prevPayroll['attendance_allowance']) && $prevPayroll['attendance_allowance'] !== null && (float)$prevPayroll['attendance_allowance'] > 0)
                ? (float)$prevPayroll['attendance_allowance']
                : (float)($emp['attendance_allowance'] ?? 0.0);

            if ($salaryType === 'HOURLY') {
                // TÍNH TỔNG CA THỰC TẾ ĐƯỢC XÁC NHẬN (chỉ lấy actual_slots, không tính từ giờ vào/ra)
                $aggStmt = $this->db->prepare("
                    SELECT 
                        COALESCE(SUM(actual_slots), 0) as tot_slots,
                        SUM(CASE WHEN has_boarding = 1 THEN 1 ELSE 0 END) as tot_bt
                    FROM daily_attendance
                    WHERE employee_id = :emp_id AND work_date BETWEEN :start AND :end
                ");
                $aggStmt->execute([':emp_id' => $employeeId, ':start' => $startDate, ':end' => $endDate]);
                $agg = $aggStmt->fetch();

                $totalSlots = (float)($agg['tot_slots'] ?? 0);
                $boardingDays = (int)($agg['tot_bt'] ?? 0);

                $slotRate = (float)($emp['hourly_rate'] ?: ($config['default_slot_rate'] ?? 120000));
                $boardRate = (float)($emp['boarding_allowance'] ?? 0);
                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);

                $salaryBySlots = round($totalSlots * $slotRate);
                $boardPay = round($boardingDays * $boardRate);
                $totalIncome = $salaryBySlots + $boardPay + $attAllowance + $travelAllowance + $bonus;
                $netSalary = max(0, $totalIncome - $deductions);

                $saveSql = "INSERT INTO monthly_payroll (
                    employee_id, month, year, total_days_x, total_ot_hours, ot_count,
                    total_slots, total_boarding_days, late_count, total_late_minutes,
                    standard_work_days, base_salary, salary_by_days, daily_salary_rate, salary_by_slots, ot_pay, boarding_pay,
                    attendance_allowance, lunch_allowance, travel_allowance, bonus, total_income, deductions, net_salary, note, director_review
                ) VALUES (
                    :employee_id, :month, :year, 0, 0, 0,
                    :total_slots, :total_boarding_days, 0, 0,
                    26.0, 0, 0, 0, :salary_by_slots, 0, :boarding_pay,
                    :attendance_allowance, 0, :travel_allowance, :bonus, :total_income, :deductions, :net_salary, :note, :director_review
                ) ON DUPLICATE KEY UPDATE
                    total_slots = VALUES(total_slots),
                    total_boarding_days = VALUES(total_boarding_days),
                    salary_by_slots = VALUES(salary_by_slots),
                    boarding_pay = VALUES(boarding_pay),
                    total_income = VALUES(total_income),
                    net_salary = VALUES(net_salary)";

                $stmt = $this->db->prepare($saveSql);
                $stmt->execute([
                    ':employee_id' => $employeeId,
                    ':month' => $month,
                    ':year' => $year,
                    ':total_slots' => $totalSlots,
                    ':total_boarding_days' => $boardingDays,
                    ':salary_by_slots' => $salaryBySlots,
                    ':boarding_pay' => $boardPay,
                    ':attendance_allowance' => $attAllowance,
                    ':travel_allowance' => $travelAllowance,
                    ':bonus' => $bonus,
                    ':total_income' => $totalIncome,
                    ':deductions' => $deductions,
                    ':net_salary' => $netSalary,
                    ':note' => $note,
                    ':director_review' => $directorReview
                ]);
            } else {
                // TÍNH LƯƠNG CỨNG (Tăng ca chỉ tính khi được xác nhận)
                $attRows = $this->db->prepare("
                    SELECT work_symbol, salary_symbol, is_overtime, ot_hours, ot_salary_hours, late_minutes
                    FROM daily_attendance
                    WHERE employee_id = :emp_id AND work_date BETWEEN :start AND :end
                ");
                $attRows->execute([':emp_id' => $employeeId, ':start' => $startDate, ':end' => $endDate]);
                $list = $attRows->fetchAll();

                $totalDaysX = 0.0;
                $totalOtHours = 0.0;
                $otCount = 0;
                $lateCount = 0;
                $totalLateMinutes = 0;

                foreach ($list as $a) {
                    $sym = trim($a['salary_symbol'] ?? $a['work_symbol']);
                    if (in_array($sym, ['X', 'X + TC', 'X+TC'])) {
                        $totalDaysX += 1.0;
                    }
                    $isRowOt = in_array($sym, ['X + TC', 'X+TC']) || (!empty($a['is_overtime']) && !in_array($sym, ['P', 'K', 'Thiếu', '-']));
                    if ($isRowOt) {
                        $otH = (float)($a['ot_salary_hours'] ?: $a['ot_hours']);
                        if ($otH <= 0) $otH = 1.50;
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
                $empStdDays = !empty($emp['standard_work_days']) ? (float)$emp['standard_work_days'] : $branchStdDays;
                if ($empStdDays <= 0) $empStdDays = 26.0;

                $dailySalaryRate = round($baseSalary / $empStdDays, 2);
                $salaryByDays = ($totalDaysX == $empStdDays) ? $baseSalary : round(($baseSalary / $empStdDays) * $totalDaysX);

                $otRate = (float)($emp['overtime_rate'] ?: ($config['default_ot_rate'] ?? 120000));
                $otPay = round($otCount * $otRate);

                $hasLunch = !isset($emp['has_lunch_allowance']) || $emp['has_lunch_allowance'] == 1;
                $lunchPay = $hasLunch ? round($totalDaysX * $lunchRate) : 0;

                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);
                $boardPay = (float)($emp['boarding_allowance'] ?? 0);

                $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $lunchPay + $travelAllowance + $bonus;
                $netSalary = max(0, $totalIncome - $deductions);

                $saveSql = "INSERT INTO monthly_payroll (
                    employee_id, month, year, total_days_x, total_ot_hours, ot_count,
                    total_slots, total_boarding_days, late_count, total_late_minutes,
                    standard_work_days, base_salary, salary_by_days, daily_salary_rate, salary_by_slots, ot_pay, boarding_pay,
                    attendance_allowance, lunch_allowance, travel_allowance, bonus, total_income, deductions, net_salary, note, director_review
                ) VALUES (
                    :employee_id, :month, :year, :total_days_x, :total_ot_hours, :ot_count,
                    0, 0, :late_count, :total_late_minutes,
                    :standard_work_days, :base_salary, :salary_by_days, :daily_salary_rate, 0, :ot_pay, :boarding_pay,
                    :attendance_allowance, :lunch_allowance, :travel_allowance, :bonus, :total_income, :deductions, :net_salary, :note, :director_review
                ) ON DUPLICATE KEY UPDATE
                    total_days_x = VALUES(total_days_x),
                    total_ot_hours = VALUES(total_ot_hours),
                    ot_count = VALUES(ot_count),
                    late_count = VALUES(late_count),
                    total_late_minutes = VALUES(total_late_minutes),
                    salary_by_days = VALUES(salary_by_days),
                    ot_pay = VALUES(ot_pay),
                    lunch_allowance = VALUES(lunch_allowance),
                    total_income = VALUES(total_income),
                    net_salary = VALUES(net_salary)";

                $stmt = $this->db->prepare($saveSql);
                $stmt->execute([
                    ':employee_id' => $employeeId,
                    ':month' => $month,
                    ':year' => $year,
                    ':total_days_x' => $totalDaysX,
                    ':total_ot_hours' => $totalOtHours,
                    ':ot_count' => $otCount,
                    ':late_count' => $lateCount,
                    ':total_late_minutes' => $totalLateMinutes,
                    ':standard_work_days' => $empStdDays,
                    ':base_salary' => $baseSalary,
                    ':salary_by_days' => $salaryByDays,
                    ':daily_salary_rate' => $dailySalaryRate,
                    ':ot_pay' => $otPay,
                    ':boarding_pay' => $boardPay,
                    ':attendance_allowance' => $attAllowance,
                    ':lunch_allowance' => $lunchPay,
                    ':travel_allowance' => $travelAllowance,
                    ':bonus' => $bonus,
                    ':total_income' => $totalIncome,
                    ':deductions' => $deductions,
                    ':net_salary' => $netSalary,
                    ':note' => $note,
                    ':director_review' => $directorReview
                ]);
            }
        } catch (Throwable $e) {
            error_log("Error in syncMonthlyPayroll: " . $e->getMessage());
        }
    }
}
