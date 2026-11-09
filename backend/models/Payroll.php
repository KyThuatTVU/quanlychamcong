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
            if (!in_array('efficiency_bonus', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN efficiency_bonus DECIMAL(12,2) DEFAULT 0 COMMENT 'Thưởng hiệu quả công việc' AFTER attendance_allowance");
            }
            if (!in_array('probation_salary', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN probation_salary DECIMAL(12,2) DEFAULT 0 COMMENT 'Lương thử việc' AFTER base_salary");
            }
            if (!in_array('official_salary', $cols)) {
                $this->db->exec("ALTER TABLE monthly_payroll ADD COLUMN official_salary DECIMAL(12,2) DEFAULT 0 COMMENT 'Lương chính thức' AFTER probation_salary");
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
        $employees = $empModel->getList($branchId, $salaryType, '', $month, $year);

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

            // Lấy thông tin điều chỉnh lương (thưởng / khấu trừ / nhận xét / chuyên cần / hiệu quả) nếu đã lưu trước đó
            $prevStmt = $this->db->prepare("SELECT bonus, deductions, note, director_review, attendance_allowance, efficiency_bonus FROM monthly_payroll WHERE employee_id = :emp_id AND month = :m AND year = :y");
            $prevStmt->execute([':emp_id' => $empId, ':m' => $month, ':y' => $year]);
            $prevPayroll = $prevStmt->fetch() ?: ['bonus' => 0, 'deductions' => 0, 'note' => '', 'director_review' => '', 'attendance_allowance' => null, 'efficiency_bonus' => null];

            $bonus = (float)($prevPayroll['bonus'] ?? 0);
            $deductions = (float)($prevPayroll['deductions'] ?? 0);
            $note = $prevPayroll['note'] ?? '';
            $directorReview = $prevPayroll['director_review'] ?? ($emp['notes'] ?? '');

            // QUY TẮC CHUYÊN CẦN:
            // Ưu tiên giá trị đã lưu trong bảng lương tháng; nếu chưa có thì lấy mức phụ cấp chuyên cần trong hồ sơ giáo viên
            $attAllowance = (isset($prevPayroll['attendance_allowance']) && $prevPayroll['attendance_allowance'] !== null)
                ? (float)$prevPayroll['attendance_allowance']
                : (float)($emp['attendance_allowance'] ?? 0.0);

            // THƯỞNG HIỆU QUẢ CÔNG VIỆC:
            $effBonus = (isset($prevPayroll['efficiency_bonus']) && $prevPayroll['efficiency_bonus'] !== null)
                ? (float)$prevPayroll['efficiency_bonus']
                : (float)($emp['efficiency_bonus'] ?? 0.0);

            if ($emp['salary_type'] === 'FIXED') {
                // TỔNG HỢP LƯƠNG CỐ ĐỊNH
                $isOnlineOrExempt = ($emp['employee_code'] === 'NV001')
                                 || ((int)$emp['id'] === 25)
                                 || (stripos($emp['full_name'] ?? '', 'Kiều Trân') !== false)
                                 || (stripos($emp['position'] ?? '', 'online') !== false)
                                 || (stripos($emp['notes'] ?? '', 'online') !== false)
                                 || (stripos($emp['notes'] ?? '', 'khoán') !== false)
                                 || (stripos($emp['notes'] ?? '', 'không chấm') !== false);

                $baseSalary = (float)$emp['base_salary'];
                // Ngày công chuẩn riêng theo hợp đồng (VD: cô Linh 21 ngày, các cô khác 26 ngày)
                $empStdDays = !empty($emp['standard_work_days']) ? (float)$emp['standard_work_days'] : $branchStdDays;
                if ($empStdDays <= 0) $empStdDays = 26.0;

                // Lương 1 ngày: (Lương cơ bản / Ngày chuẩn riêng)
                $dailySalaryRate = round($baseSalary / $empStdDays, 2);

                $totalDaysX = 0.0;
                $totalOtHours = 0.0;
                $otCount = 0;
                $lateCount = 0;
                $totalLateMinutes = 0;

                if ($isOnlineOrExempt) {
                    // Nhân sự kỹ thuật / quản lý online hoặc lương khoán trọn tháng: hưởng đủ ngày chuẩn trọn tháng, không cần chấm công
                    $totalDaysX = $empStdDays;
                    $salaryByDays = $baseSalary;
                    if (empty($note)) {
                        $note = ((int)$emp['id'] === 25 || stripos($emp['full_name'] ?? '', 'Kiều Trân') !== false)
                            ? 'Lương khoán thỏa thuận trọn tháng (không cần chấm công).'
                            : 'Nhân sự làm online / khoán trọn tháng (không cần chấm công).';
                    }
                } else {
                    foreach ($attendanceList as $a) {
                        $rawWork = trim($a['work_symbol'] ?? '');
                        $rawSal = trim($a['salary_symbol'] ?? '');
                        $sym = ($rawWork !== '' && $rawWork !== '-') ? $rawWork : ($rawSal ?: '-');
                        if (in_array($sym, ['X', 'X + TC', 'X+TC', 'X + CT', 'X+CT'])) {
                            $totalDaysX += 1.0;
                        } elseif (in_array($sym, ['0.5', '0.5X', '0.5 + TC', '0.5+TC', '0.5X+TC', '0.5X + TC', '0.5 + CT', '0.5+CT'])) {
                            $totalDaysX += 0.5;
                        }

                        // TĂNG CA / CA TỐI:
                        // Hỗ trợ cả trường hợp giáo viên nghỉ bán trú ban ngày nhưng tối vẫn đến dạy 1 ca (ký hiệu: CT, TC, P + CT, P + TC)
                        $otH = (float)($a['ot_salary_hours'] ?: $a['ot_hours']);
                        $hasOtSymbol = in_array($sym, ['X + TC', 'X+TC', 'TC', 'P + TC', 'P+TC', '0.5 + TC', '0.5+TC', '0.5X+TC', '0.5X + TC', 'X + CT', 'X+CT', 'CT', 'P + CT', 'P+CT', '0.5 + CT', '0.5+CT']);
                        $isRowOt = $hasOtSymbol || (!empty($a['is_overtime']) && $otH > 0) || (!empty($a['is_overtime']) && !in_array($sym, ['P', 'K', 'Thiếu', '-']));

                        if ($isRowOt) {
                            if ($otH <= 0) {
                                $otH = 1.50; // Mặc định 1 ca = 1.50h (90 phút)
                            }
                            // Quy đổi số ca TC: 1.5h = 1 ca, 3h = 2 ca
                            $slotsInDay = round($otH / 1.5, 2);
                            if ($slotsInDay < 0.5) $slotsInDay = 1.0;
                            $otCount += $slotsInDay;
                            $totalOtHours += $otH;
                        }
                        $lateM = (int)($a['late_minutes'] ?? 0);
                        if ($lateM > 0) {
                            $lateCount++;
                            $totalLateMinutes += $lateM;
                        }
                    }

                    // Lương theo ngày công thực tế (X): nếu làm đủ ngày chuẩn thì = đúng Lương cơ bản
                    $salaryByDays = ($totalDaysX == $empStdDays) ? $baseSalary : round(($baseSalary / $empStdDays) * $totalDaysX);
                }

                // Tiền tăng ca: Số ca TC * Đơn giá ca (mặc định 120.000đ/ca hoặc cấu hình riêng theo cô, ví dụ cô Hiền 100k/ca = 200k/2 ca)
                $otRate = (float)($emp['overtime_rate'] ?: ($config['default_ot_rate'] ?? 120000));
                $otPay = round($otCount * $otRate);

                // Phụ cấp cơm: 25k * số ngày công X (nếu có hưởng cơm, ngược lại 0đ). Lưu ý: Chi nhánh Tân Nhựt (branch_id = 2) không có phụ cấp cơm
                $isTanNhut = ((int)($emp['branch_id'] ?? 0) === 2);
                $hasLunch = !$isTanNhut && (!isset($emp['has_lunch_allowance']) || (int)$emp['has_lunch_allowance'] === 1);
                $lunchPay = $hasLunch ? round($totalDaysX * $lunchRate) : 0;

                // Các khoản đãi ngộ cố định theo hồ sơ (Chuyên cần $attAllowance lấy từ đánh giá tháng)
                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);
                $boardPay = (float)($emp['boarding_allowance'] ?? 0);

                // Tổng thu = Lương công + Tăng ca + Bán trú + Chuyên cần + Cơm + Thưởng đi lại + Thưởng hiệu quả + Thưởng khác
                $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $effBonus + $lunchPay + $travelAllowance + $bonus;
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
                    'probation_salary' => (float)($emp['probation_salary'] ?? 0),
                    'official_salary' => (float)($emp['official_salary'] ?? $baseSalary),
                    'salary_by_days' => $salaryByDays,
                    'daily_salary_rate' => $dailySalaryRate,
                    'salary_by_slots' => 0,
                    'ot_pay' => $otPay,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'efficiency_bonus' => $effBonus,
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
                    'attendance_allowance' => $attAllowance,
                    'efficiency_bonus' => $effBonus,
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
                $slotBreakdown = self::calculateHourlySlots($attendanceList, $emp, $config);
                $totalSlots = $slotBreakdown['total_slots'];
                $salaryBySlots = $slotBreakdown['salary_by_slots'];
                $boardingDays = $slotBreakdown['boarding_days'];

                if ($slotBreakdown['has_diff_rates'] && $totalSlots > 0) {
                    $slotNote = "{$slotBreakdown['morning_slots']} ca sáng x " . number_format($slotBreakdown['morning_rate'], 0, ',', '.') . "đ = " . number_format($slotBreakdown['morning_pay'], 0, ',', '.') . "đ. {$slotBreakdown['evening_slots']} ca chiều/tối x " . number_format($slotBreakdown['evening_rate'], 0, ',', '.') . "đ = " . number_format($slotBreakdown['evening_pay'], 0, ',', '.') . "đ. Tổng {$totalSlots} ca: " . number_format($salaryBySlots, 0, ',', '.') . "đ.";
                    if (empty($note) || stripos($note, 'ca sáng') !== false) {
                        $note = $slotNote;
                    }
                    if (empty($directorReview) || stripos($directorReview, 'ca sáng') !== false) {
                        $directorReview = $slotNote;
                    }
                }

                $boardRate = (float)$emp['boarding_allowance'];
                $boardPay = round($boardingDays * $boardRate);
                $travelAllowance = (float)($emp['travel_allowance'] ?? 0);

                $totalIncome = $salaryBySlots + $boardPay + $attAllowance + $effBonus + $travelAllowance + $bonus;
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
                    'probation_salary' => 0,
                    'official_salary' => 0,
                    'salary_by_days' => 0,
                    'daily_salary_rate' => 0,
                    'salary_by_slots' => $salaryBySlots,
                    'ot_pay' => 0,
                    'boarding_pay' => $boardPay,
                    'attendance_allowance' => $attAllowance,
                    'efficiency_bonus' => $effBonus,
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
                    'efficiency_bonus' => $effBonus,
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

    /**
     * Tách và tính toán chi tiết số ca dạy theo buổi (Sáng: 120k, Chiều & Tối: 100k)
     * Nhận diện thông minh ký hiệu: 1S+1T, 1S+2CT, 1S+1C+1T, 1T, 2S...
     */
    public static function calculateHourlySlots(array $attendanceList, array $emp, array $config): array {
        $totalSlots = 0.0;
        $morningSlots = 0.0;
        $eveningSlots = 0.0;
        $boardingDays = 0;

        // CHỈ RIÊNG CÔ NGỌC (GV010) MỚI CÓ MỨC LƯƠNG ĐẶC BIỆT: SÁNG 120k, CHIỀU & TỐI 100k
        $isCoNgoc = ((int)($emp['id'] ?? 0) === 11) 
                 || (($emp['employee_code'] ?? '') === 'GV010' && stripos($emp['full_name'] ?? '', 'Ngọc') !== false);

        if ($isCoNgoc) {
            $morningRate = 120000;
            $eveningRate = 100000;
            $defaultRate = 100000;
            $hasDiffRates = true;
        } else {
            $defaultRate = (float)(!empty($emp['hourly_rate']) 
                ? $emp['hourly_rate'] 
                : (!empty($emp['official_hourly_rate']) ? $emp['official_hourly_rate'] : ($config['default_slot_rate'] ?? 120000)));
            $morningRate = $defaultRate;
            $eveningRate = $defaultRate;
            $hasDiffRates = false;
        }

        foreach ($attendanceList as $a) {
            if (!empty($a['has_boarding'])) {
                $boardingDays++;
            }

            $rawAct = ($a['actual_slots'] !== null && $a['actual_slots'] !== '') ? (float)str_replace(',', '.', (string)$a['actual_slots']) : null;
            $workSym = trim((string)($a['work_symbol'] ?? ''));
            $note = trim((string)($a['notes'] ?? ''));
            $combineText = mb_strtoupper($workSym . ' ' . $note, 'UTF-8');

            $dayM = 0.0;
            $dayE = 0.0;

            if ($hasDiffRates) {
                // 1. Chuẩn hóa và bóc tách theo ký hiệu công / ghi chú (1S, 1C, 1T, 1S+1T...)
                $clean = preg_replace('/\bCA\b/u', '', $combineText);
                $clean = preg_replace('/CHIỀU\s*[\+\&\,]?\s*TỐI/u', 'CT', $clean);
                $clean = preg_replace('/SÁNG/u', 'S', $clean);
                $clean = preg_replace('/CHIỀU/u', 'C', $clean);
                $clean = preg_replace('/TỐI/u', 'T', $clean);

                if (preg_match('/(\d+(?:\.\d+)?)\s*S/u', $clean, $m)) {
                    $dayM += (float)$m[1];
                }
                if (preg_match('/(\d+(?:\.\d+)?)\s*CT/u', $clean, $m)) {
                    $dayE += (float)$m[1];
                } else {
                    if (preg_match('/(\d+(?:\.\d+)?)\s*C(?!T)/u', $clean, $m)) {
                        $dayE += (float)$m[1];
                    }
                    if (preg_match('/(\d+(?:\.\d+)?)\s*T/u', $clean, $m)) {
                        $dayE += (float)$m[1];
                    }
                }

                // 2. Nếu chưa nhận diện được qua ký hiệu chữ, kiểm tra thời gian phút thực tế của từng ca
                if ($dayM == 0 && $dayE == 0) {
                    $mMins = (int)($a['morning_minutes'] ?? 0);
                    $aMins = (int)($a['afternoon_minutes'] ?? 0);
                    $eMins = (int)($a['evening_minutes'] ?? 0);
                    if ($mMins > 0) {
                        $dayM += round($mMins / 90.0, 2);
                    }
                    if ($aMins > 0) {
                        $dayE += round($aMins / 90.0, 2);
                    }
                    if ($eMins > 0) {
                        $dayE += round($eMins / 90.0, 2);
                    }
                }

                if ($dayM > 0 || $dayE > 0) {
                    $morningSlots += $dayM;
                    $eveningSlots += $dayE;
                    $totalSlots += ($dayM + $dayE);
                    continue;
                }
            }

            $slots = ($rawAct !== null) ? round($rawAct, 2) : 0;
            $totalSlots += $slots;
            $eveningSlots += $slots;
        }

        $totalSlots = round($totalSlots, 2);
        $morningSlots = round($morningSlots, 2);
        $eveningSlots = round($eveningSlots, 2);

        $morningPay = round($morningSlots * $morningRate);
        $eveningPay = round($eveningSlots * $eveningRate);

        if ($hasDiffRates && ($morningSlots > 0 || $eveningSlots > 0)) {
            $salaryBySlots = $morningPay + $eveningPay;
        } else {
            $salaryBySlots = round($totalSlots * $defaultRate);
        }

        return [
            'total_slots' => $totalSlots,
            'morning_slots' => $morningSlots,
            'evening_slots' => $eveningSlots,
            'morning_rate' => $morningRate,
            'evening_rate' => $eveningRate,
            'morning_pay' => $morningPay,
            'evening_pay' => $eveningPay,
            'salary_by_slots' => $salaryBySlots,
            'boarding_days' => $boardingDays,
            'has_diff_rates' => $hasDiffRates
        ];
    }

    private function savePayrollRecord(array $d): void {
        $sql = "INSERT INTO monthly_payroll (
            employee_id, month, year, total_days_x, total_ot_hours, ot_count,
            total_slots, total_boarding_days, late_count, total_late_minutes,
            standard_work_days, base_salary, probation_salary, official_salary, probation_hourly_rate, official_hourly_rate,
            salary_by_days, daily_salary_rate, salary_by_slots, ot_pay, boarding_pay,
            attendance_allowance, efficiency_bonus, lunch_allowance, travel_allowance, bonus, total_income, deductions, net_salary, note, director_review
        ) VALUES (
            :employee_id, :month, :year, :total_days_x, :total_ot_hours, :ot_count,
            :total_slots, :total_boarding_days, :late_count, :total_late_minutes,
            :standard_work_days, :base_salary, :probation_salary, :official_salary, :probation_hourly_rate, :official_hourly_rate,
            :salary_by_days, :daily_salary_rate, :salary_by_slots, :ot_pay, :boarding_pay,
            :attendance_allowance, :efficiency_bonus, :lunch_allowance, :travel_allowance, :bonus, :total_income, :deductions, :net_salary, :note, :director_review
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
            probation_salary = VALUES(probation_salary),
            official_salary = VALUES(official_salary),
            probation_hourly_rate = VALUES(probation_hourly_rate),
            official_hourly_rate = VALUES(official_hourly_rate),
            salary_by_days = VALUES(salary_by_days),
            daily_salary_rate = VALUES(daily_salary_rate),
            salary_by_slots = VALUES(salary_by_slots),
            ot_pay = VALUES(ot_pay),
            boarding_pay = VALUES(boarding_pay),
            attendance_allowance = VALUES(attendance_allowance),
            efficiency_bonus = VALUES(efficiency_bonus),
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
            ':probation_salary' => $d['probation_salary'] ?? 0,
            ':official_salary' => $d['official_salary'] ?? $d['base_salary'],
            ':probation_hourly_rate' => $d['probation_hourly_rate'] ?? 0,
            ':official_hourly_rate' => $d['official_hourly_rate'] ?? 0,
            ':salary_by_days' => $d['salary_by_days'],
            ':daily_salary_rate' => $d['daily_salary_rate'] ?? 0,
            ':salary_by_slots' => $d['salary_by_slots'],
            ':ot_pay' => $d['ot_pay'],
            ':boarding_pay' => $d['boarding_pay'],
            ':attendance_allowance' => $d['attendance_allowance'],
            ':efficiency_bonus' => $d['efficiency_bonus'] ?? 0,
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
                       COALESCE(p.probation_salary, e.probation_salary, 0) AS probation_salary,
                       COALESCE(p.official_salary, e.official_salary, e.base_salary, 0) AS official_salary,
                       COALESCE(p.probation_hourly_rate, e.probation_hourly_rate, 0) AS probation_hourly_rate,
                       COALESCE(p.official_hourly_rate, e.official_hourly_rate, e.hourly_rate, 0) AS official_hourly_rate,
                       e.notes AS emp_notes,
                       COALESCE(p.efficiency_bonus, e.efficiency_bonus, 0) AS efficiency_bonus,
                       e.hourly_rate AS hourly_rate,
                       e.hourly_rate AS hourly_rate,
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
            $effBonus = isset($d['efficiency_bonus']) ? (float)$d['efficiency_bonus'] : (float)($emp['efficiency_bonus'] ?? 0);

            $salaryByDays = isset($d['salary_by_days']) 
                ? (float)$d['salary_by_days'] 
                : (($totalDaysX == $empStdDays) ? $baseSalary : round($dailySalaryRate * $totalDaysX));
            $isTanNhut = ((int)($emp['branch_id'] ?? 0) === 2);
            $hasLunch = !$isTanNhut && (!isset($emp['has_lunch_allowance']) || (int)$emp['has_lunch_allowance'] === 1);
            $lunchPay = $isTanNhut ? 0.0 : (isset($d['lunch_allowance']) ? (float)$d['lunch_allowance'] : ($hasLunch ? round($totalDaysX * $lunchRate) : 0));

            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';
            $directorReview = $d['director_review'] ?? '';

            $totalIncome = $salaryByDays + $otPay + $boardPay + $attAllowance + $effBonus + $lunchPay + $travelAllowance + $bonus;
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
                'probation_salary' => isset($d['probation_salary']) ? (float)$d['probation_salary'] : (float)($emp['probation_salary'] ?? 0),
                'official_salary' => isset($d['official_salary']) ? (float)$d['official_salary'] : (float)($emp['official_salary'] ?? $baseSalary),
                'probation_hourly_rate' => isset($d['probation_hourly_rate']) ? (float)$d['probation_hourly_rate'] : (float)($emp['probation_hourly_rate'] ?? 0),
                'official_hourly_rate' => isset($d['official_hourly_rate']) ? (float)$d['official_hourly_rate'] : (float)($emp['official_hourly_rate'] ?? 0),
                'salary_by_days' => $salaryByDays,
                'daily_salary_rate' => $dailySalaryRate,
                'salary_by_slots' => 0,
                'ot_pay' => $otPay,
                'boarding_pay' => $boardPay,
                'attendance_allowance' => $attAllowance,
                'efficiency_bonus' => $effBonus,
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
            $effBonus = isset($d['efficiency_bonus']) ? (float)$d['efficiency_bonus'] : (float)($emp['efficiency_bonus'] ?? 0);
            $travelAllowance = isset($d['travel_allowance']) ? (float)$d['travel_allowance'] : 0.0;
            $bonus = isset($d['bonus']) ? (float)$d['bonus'] : 0.0;
            $deductions = isset($d['deductions']) ? (float)$d['deductions'] : 0.0;
            $note = $d['note'] ?? '';
            $directorReview = $d['director_review'] ?? '';

            $totalIncome = $salaryBySlots + $boardingPay + $attAllowance + $effBonus + $travelAllowance + $bonus;
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
                'probation_salary' => 0,
                'official_salary' => 0,
                'probation_hourly_rate' => isset($d['probation_hourly_rate']) ? (float)$d['probation_hourly_rate'] : (float)($emp['probation_hourly_rate'] ?? 0),
                'official_hourly_rate' => isset($d['official_hourly_rate']) ? (float)$d['official_hourly_rate'] : (float)($emp['official_hourly_rate'] ?? $hourlyRate),
                'salary_by_days' => 0,
                'daily_salary_rate' => 0,
                'salary_by_slots' => $salaryBySlots,
                'ot_pay' => 0,
                'boarding_pay' => $boardingPay,
                'attendance_allowance' => $attAllowance,
                'efficiency_bonus' => $effBonus,
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
                   e.probation_salary AS emp_probation_salary,
                   e.official_salary AS emp_official_salary,
                   e.probation_hourly_rate AS emp_probation_hourly_rate,
                   e.official_hourly_rate AS emp_official_hourly_rate,
                   e.notes AS emp_notes,
                   e.hourly_rate AS hourly_rate,
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

            if ($res['salary_type'] === 'HOURLY') {
                $startDate = sprintf('%04d-%02d-01', $year, $month);
                $daysInMonth = (int)date('t', strtotime($startDate));
                $endDate = sprintf('%04d-%02d-%02d', $year, $month, $daysInMonth);
                $attStmt = $this->db->prepare("SELECT * FROM daily_attendance WHERE employee_id = :emp_id AND work_date BETWEEN :start AND :end");
                $attStmt->execute([':emp_id' => $empId, ':start' => $startDate, ':end' => $endDate]);
                $attList = $attStmt->fetchAll();

                $cfgStmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
                $cfgStmt->execute([':branch_id' => $res['branch_id'] ?? 1]);
                $config = $cfgStmt->fetch() ?: [];

                $breakdown = self::calculateHourlySlots($attList, $res, $config);
                $res['morning_slots'] = $breakdown['morning_slots'];
                $res['evening_slots'] = $breakdown['evening_slots'];
                $res['morning_rate'] = $breakdown['morning_rate'];
                $res['evening_rate'] = $breakdown['evening_rate'];
                $res['morning_pay'] = $breakdown['morning_pay'];
                $res['evening_pay'] = $breakdown['evening_pay'];
                $res['has_diff_rates'] = $breakdown['has_diff_rates'];
            }
        }
        return $res ?: null;
    }
}
