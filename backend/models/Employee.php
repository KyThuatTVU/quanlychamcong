<?php
require_once __DIR__ . '/../config/database.php';

class Employee {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
        $this->ensureSchema();
    }

    /**
     * Tự động bổ sung các trường cấu hình đãi ngộ mới nếu CSDL chưa có
     */
    private function ensureSchema(): void {
        static $checked = false;
        if ($checked) return;
        $checked = true;

        try {
            $cols = $this->db->query("SHOW COLUMNS FROM employees")->fetchAll(PDO::FETCH_COLUMN);
            if (!in_array('standard_work_days', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN standard_work_days DECIMAL(4,1) DEFAULT 26.0 COMMENT 'Ngày công chuẩn riêng' AFTER standard_hours");
            }
            if (!in_array('travel_allowance', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN travel_allowance DECIMAL(12,2) DEFAULT 0 COMMENT 'Thưởng đi lại / Phụ cấp xăng xe' AFTER boarding_allowance");
            }
            if (!in_array('has_lunch_allowance', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN has_lunch_allowance TINYINT(1) DEFAULT 1 COMMENT '1 = Nhận cơm 25k/ngày, 0 = Không nhận' AFTER travel_allowance");
            }
            if (!in_array('probation_salary', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN probation_salary DECIMAL(12,2) DEFAULT 0 COMMENT 'Lương thử việc' AFTER base_salary");
            }
            if (!in_array('official_salary', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN official_salary DECIMAL(12,2) DEFAULT 0 COMMENT 'Lương chính thức' AFTER probation_salary");
            }
            if (!in_array('efficiency_bonus', $cols)) {
                $this->db->exec("ALTER TABLE employees ADD COLUMN efficiency_bonus DECIMAL(12,2) DEFAULT 0 COMMENT 'Thưởng hiệu quả công việc' AFTER attendance_allowance");
            }
        } catch (Throwable $e) {
            // Bỏ qua lỗi nếu đã tồn tại
        }
    }

    /**
     * Đồng bộ hồ sơ lương định mức cho 8 giáo viên Càng Long từ dữ liệu mẫu Tháng 9
     * QUY TẮC CỐ ĐỊNH & PHÁT SINH:
     * - Dữ liệu cố định theo hợp đồng: Mã GV, Họ tên, Chức vụ, Lương cơ bản, Ngày chuẩn, Lương/ngày, Thưởng đi lại, Chế độ cơm.
     * - Chuyên cần (attendance_allowance): Là dữ liệu PHÁT SINH cuối tháng do Giám đốc đánh giá và cho trên bảng lương,
     *   KHÔNG lưu số tiền cứng vào hồ sơ nhân viên (đặt = 0).
     */
    public function syncSeptemberSampleProfiles(): void {
        static $synced = false;
        if ($synced) return;
        $synced = true;

        $samples = [
            'GV002' => [
                'full_name' => 'NGUYỄN THỊ THÙY LINH',
                'position' => 'Giáo viên bán trú',
                'base_salary' => 3200000,
                'standard_work_days' => 21.0,
                'attendance_allowance' => 0, // Phát sinh cuối tháng
                'travel_allowance' => 200000,
                'has_lunch_allowance' => 0,
                'notes' => 'Cô cần học thêm chuyên môn luyện chữ đẹp để dạy bé TTH'
            ],
            'GV001' => [
                'full_name' => 'NGUYỄN THỊ KHÁNH VY',
                'position' => 'GV Bán Trú & Ca Tối',
                'base_salary' => 5175000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 0,
                'has_lunch_allowance' => 1,
                'notes' => 'Hoàn thành xuất sắc nhiệm vụ giảng dạy'
            ],
            'GV003' => [
                'full_name' => 'NGUYỄN THỊ NGỌC TRÂM',
                'position' => 'Giáo viên Bán Trú',
                'base_salary' => 6800000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 150000,
                'has_lunch_allowance' => 0,
                'notes' => 'Nhiệt tình, chu đáo với học sinh'
            ],
            'GV004' => [
                'full_name' => 'TRẦN THỊ NHƯ Ý',
                'position' => 'GV Bán Trú & Ca Tối',
                'base_salary' => 7200000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 200000,
                'has_lunch_allowance' => 1,
                'notes' => 'Tích cực hỗ trợ dạy kèm ca tối'
            ],
            'GV005' => [
                'full_name' => 'NGUYỄN HUYỀN PHƯƠNG TUYỀN',
                'position' => 'Giáo viên Bán Trú',
                'base_salary' => 7500000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 200000,
                'has_lunch_allowance' => 1,
                'notes' => 'Tận tâm, có chuyên môn tốt'
            ],
            'GV006' => [
                'full_name' => 'TÔ THỊ CẨM TÚ',
                'position' => 'Giáo viên Bán Trú',
                'base_salary' => 7500000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 200000,
                'has_lunch_allowance' => 1,
                'notes' => 'Quản lý lớp bán trú nền nếp'
            ],
            'GV007' => [
                'full_name' => 'NGUYỄN TƯỜNG VI',
                'position' => 'Giáo viên Bán Trú',
                'base_salary' => 7000000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 150000,
                'has_lunch_allowance' => 1,
                'notes' => 'Chăm sóc và dạy bé tiến bộ'
            ],
            'GV008' => [
                'full_name' => 'HỒ THỊ ANH THƯ',
                'position' => 'Giáo viên Bán Trú',
                'base_salary' => 6800000,
                'standard_work_days' => 26.0,
                'attendance_allowance' => 0,
                'travel_allowance' => 150000,
                'has_lunch_allowance' => 1,
                'notes' => 'Dạy thứ 2 đến thứ 6 tốt'
            ]
        ];

        try {
            $upd = $this->db->prepare("
                UPDATE employees SET
                    position = :pos,
                    base_salary = :sal,
                    standard_work_days = :std_days,
                    attendance_allowance = 0,
                    travel_allowance = :travel,
                    has_lunch_allowance = :lunch,
                    notes = :notes
                WHERE branch_id = 1 AND employee_code = :code AND salary_type = 'FIXED'
            ");

            foreach ($samples as $code => $d) {
                $upd->execute([
                    ':pos' => $d['position'],
                    ':sal' => $d['base_salary'],
                    ':std_days' => $d['standard_work_days'],
                    ':travel' => $d['travel_allowance'],
                    ':lunch' => $d['has_lunch_allowance'],
                    ':notes' => $d['notes'],
                    ':code' => $code
                ]);
            }

            // Sync Chi nhánh Tân Nhựt (branch_id = 2) theo phân loại hồ sơ:
            // - Cô Hiền, Cô My: Lương Cố Định (FIXED)
            // - Cô Vi, Cô Loan, Cô Hồng, Cô Nhi: Giáo viên dạy ca tối / theo giờ (HOURLY)
            $tanNhutSamples = [
                ['pattern' => '%Hiền%', 'code' => 'GV001', 'name' => 'CÔ HIỀN', 'pos' => 'Giáo viên bán trú & Ca tối', 'type' => 'FIXED',  'sal' => 6000000, 'rate' => 120000, 'ot_rate' => 100000, 'std' => 26.0, 'travel' => 200000, 'lunch' => 1, 'att' => 1000000],
                ['pattern' => '%My%',   'code' => 'GV002', 'name' => 'CÔ MY',   'pos' => 'Giáo viên bán trú',           'type' => 'FIXED',  'sal' => 7000000, 'rate' => 0,      'ot_rate' => 120000, 'std' => 26.0, 'travel' => 500000, 'lunch' => 1],
                ['pattern' => '%Vi%',   'code' => 'GV003', 'name' => 'CÔ VI',   'pos' => 'Giáo viên ca tối',            'type' => 'HOURLY', 'sal' => 1560000, 'rate' => 120000, 'ot_rate' => 120000, 'std' => 13.0, 'travel' => 100000, 'lunch' => 0],
                ['pattern' => '%Loan%', 'code' => 'GV004', 'name' => 'CÔ LOAN', 'pos' => 'Giáo viên ca tối',            'type' => 'HOURLY', 'sal' => 1560000, 'rate' => 120000, 'ot_rate' => 120000, 'std' => 13.0, 'travel' => 100000, 'lunch' => 0],
                ['pattern' => '%Hồng%', 'code' => 'GV005', 'name' => 'CÔ HỒNG', 'pos' => 'Giáo viên ca tối',            'type' => 'HOURLY', 'sal' => 3120000, 'rate' => 120000, 'ot_rate' => 120000, 'std' => 13.0, 'travel' => 150000, 'lunch' => 0],
                ['pattern' => '%Nhi%',  'code' => 'GV006', 'name' => 'CÔ NHI',  'pos' => 'Giáo viên ca chiều - tối',    'type' => 'HOURLY', 'sal' => 3900000, 'rate' => 150000, 'ot_rate' => 120000, 'std' => 26.0, 'travel' => 200000, 'lunch' => 0],
            ];

            foreach ($tanNhutSamples as $t) {
                $stmt = $this->db->prepare("SELECT id FROM employees WHERE branch_id = 2 AND full_name LIKE :pat LIMIT 1");
                $stmt->execute([':pat' => $t['pattern']]);
                $empId = $stmt->fetchColumn();

                if ($empId) {
                    $updTN = $this->db->prepare("
                        UPDATE employees SET
                            employee_code = :code,
                            full_name = :name,
                            position = :pos,
                            salary_type = :type,
                            base_salary = :sal,
                            hourly_rate = :rate,
                            overtime_rate = :ot_rate,
                            standard_work_days = :std,
                            attendance_allowance = :att,
                            travel_allowance = :travel,
                            has_lunch_allowance = :lunch
                        WHERE id = :id
                    ");
                    $updTN->execute([
                        ':code' => $t['code'],
                        ':name' => $t['name'],
                        ':pos' => $t['pos'],
                        ':type' => $t['type'],
                        ':sal' => $t['sal'],
                        ':rate' => $t['rate'],
                        ':ot_rate' => $t['ot_rate'] ?? 120000,
                        ':std' => $t['std'],
                        ':att' => $t['att'] ?? 0,
                        ':travel' => $t['travel'],
                        ':lunch' => $t['lunch'],
                        ':id' => $empId
                    ]);
                }
            }
        } catch (Throwable $e) {}
    }

    public function getList(int $branchId = 0, string $salaryType = '', string $status = 'ACTIVE', int $month = 0, int $year = 0): array {
        $sql = "SELECT e.*, b.name as branch_name, b.code as branch_code,
                       u.id as user_id, u.username as user_username, u.email as user_email,
                       u.role as user_role, u.status as user_status,
                       (CASE WHEN u.id IS NOT NULL THEN 1 ELSE 0 END) as has_account
                FROM employees e
                JOIN branches b ON e.branch_id = b.id
                LEFT JOIN users u ON (u.employee_id = e.id OR (u.username = e.employee_code AND u.branch_id = e.branch_id))
                WHERE 1=1";
        $params = [];

        if ($branchId > 0) {
            $sql .= " AND e.branch_id = :branch_id";
            $params[':branch_id'] = $branchId;
        }
        if (!empty($salaryType)) {
            $sql .= " AND e.salary_type = :salary_type";
            $params[':salary_type'] = $salaryType;
        }

        if ($status === 'ALL') {
            // Lấy tất cả, không lọc status
        } elseif ($month > 0 && $year > 0) {
            // LỌC THÔNG MINH THEO KỲ:
            $startDate = sprintf('%04d-%02d-01', $year, $month);
            $daysInM = (int)date('t', strtotime($startDate));
            $endDate = sprintf('%04d-%02d-%02d', $year, $month, $daysInM);
            $endDateTime = sprintf('%04d-%02d-%02d 23:59:59', $year, $month, $daysInM);

            $sql .= " AND (
                (
                    e.status = 'ACTIVE'
                    AND (e.created_at IS NULL OR e.created_at <= :p_end_time)
                    AND (e.start_date IS NULL OR e.start_date <= :p_end1)
                    AND (e.resigned_date IS NULL OR e.resigned_date >= :p_start1)
                )
                OR (
                    e.status = 'RESIGNED'
                    AND e.resigned_date IS NOT NULL
                    AND e.resigned_date >= :p_start2
                    AND (e.start_date IS NULL OR e.start_date <= :p_end2)
                )
                OR EXISTS (
                    SELECT 1 FROM daily_attendance a 
                    WHERE a.employee_id = e.id 
                      AND a.work_date BETWEEN :p_start3 AND :p_end3
                      AND (a.work_symbol NOT IN ('-', '', '0') OR a.total_slots > 0 OR a.time_in IS NOT NULL)
                )
            )
            AND NOT (e.status = 'RESIGNED' AND e.resigned_date IS NOT NULL AND e.resigned_date < :p_start_hard)";

            $params[':p_start1'] = $startDate;
            $params[':p_start2'] = $startDate;
            $params[':p_start3'] = $startDate;
            $params[':p_start_hard'] = $startDate;
            $params[':p_end1'] = $endDate;
            $params[':p_end2'] = $endDate;
            $params[':p_end3'] = $endDate;
            $params[':p_end_time'] = $endDateTime;
        } elseif (!empty($status)) {
            $sql .= " AND e.status = :status";
            $params[':status'] = $status;
        }

        $sql .= " ORDER BY e.branch_id ASC, e.salary_type ASC, e.employee_code ASC";
        $stmt = $this->db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public function getById(int $id): ?array {
        $stmt = $this->db->prepare("
            SELECT e.*, b.name as branch_name, b.code as branch_code,
                   u.id as user_id, u.username as user_username, u.email as user_email,
                   u.role as user_role, u.status as user_status,
                   (CASE WHEN u.id IS NOT NULL THEN 1 ELSE 0 END) as has_account
            FROM employees e
            JOIN branches b ON e.branch_id = b.id
            LEFT JOIN users u ON (u.employee_id = e.id OR (u.username = e.employee_code AND u.branch_id = e.branch_id))
            WHERE e.id = :id LIMIT 1
        ");
        $stmt->execute([':id' => $id]);
        $res = $stmt->fetch();
        return $res ?: null;
    }

    public function create(array $data): int {
        $sql = "INSERT INTO employees (
            branch_id, employee_code, full_name, position, phone, salary_type,
            base_salary, probation_salary, official_salary, hourly_rate, overtime_rate,
            attendance_allowance, efficiency_bonus, boarding_allowance,
            travel_allowance, has_lunch_allowance, other_allowance, time_frame, standard_hours, standard_work_days,
            default_time_in, default_time_out, work_schedule, start_date, status, resigned_date, notes
        ) VALUES (
            :branch_id, :employee_code, :full_name, :position, :phone, :salary_type,
            :base_salary, :probation_salary, :official_salary, :hourly_rate, :overtime_rate,
            :attendance_allowance, :efficiency_bonus, :boarding_allowance,
            :travel_allowance, :has_lunch_allowance, :other_allowance, :time_frame, :standard_hours, :standard_work_days,
            :default_time_in, :default_time_out, :work_schedule, :start_date, :status, :resigned_date, :notes
        )";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([
            ':branch_id' => $data['branch_id'] ?? 1,
            ':employee_code' => trim($data['employee_code']),
            ':full_name' => trim($data['full_name']),
            ':position' => $data['position'] ?? '',
            ':phone' => $data['phone'] ?? '',
            ':salary_type' => $data['salary_type'] ?? 'FIXED',
            ':base_salary' => $data['base_salary'] ?? 0,
            ':probation_salary' => $data['probation_salary'] ?? 0,
            ':official_salary' => $data['official_salary'] ?? ($data['base_salary'] ?? 0),
            ':hourly_rate' => $data['hourly_rate'] ?? 0,
            ':overtime_rate' => $data['overtime_rate'] ?? 150000,
            ':attendance_allowance' => $data['attendance_allowance'] ?? 0,
            ':efficiency_bonus' => $data['efficiency_bonus'] ?? 0,
            ':boarding_allowance' => $data['boarding_allowance'] ?? 0,
            ':travel_allowance' => $data['travel_allowance'] ?? 0,
            ':has_lunch_allowance' => ((int)($data['branch_id'] ?? 0) === 2) ? 0 : (isset($data['has_lunch_allowance']) ? (int)$data['has_lunch_allowance'] : 1),
            ':other_allowance' => $data['other_allowance'] ?? 0,
            ':time_frame' => $data['time_frame'] ?? '',
            ':standard_hours' => $data['standard_hours'] ?? 8.0,
            ':standard_work_days' => $data['standard_work_days'] ?? 26.0,
            ':default_time_in' => !empty($data['default_time_in']) ? $data['default_time_in'] : null,
            ':default_time_out' => !empty($data['default_time_out']) ? $data['default_time_out'] : null,
            ':work_schedule' => $data['work_schedule'] ?? 'Thứ 2 - Thứ 7',
            ':start_date' => !empty($data['start_date']) ? $data['start_date'] : null,
            ':status' => $data['status'] ?? 'ACTIVE',
            ':resigned_date' => !empty($data['resigned_date']) ? $data['resigned_date'] : null,
            ':notes' => $data['notes'] ?? ''
        ]);

        $newId = (int)$this->db->lastInsertId();

        // Tự động tạo tài khoản đăng nhập nếu có yêu cầu
        if (!empty($data['create_account']) || !empty($data['account_username'])) {
            require_once __DIR__ . '/User.php';
            $userModel = new User();
            $userModel->createOrUpdateForEmployee(
                $newId,
                $data,
                (int)($data['branch_id'] ?? 1),
                trim($data['full_name'])
            );
        }

        return $newId;
    }

    public function update(int $id, array $data): bool {
        $sql = "UPDATE employees SET 
            branch_id = :branch_id,
            employee_code = :employee_code,
            full_name = :full_name,
            position = :position,
            phone = :phone,
            salary_type = :salary_type,
            base_salary = :base_salary,
            probation_salary = :probation_salary,
            official_salary = :official_salary,
            hourly_rate = :hourly_rate,
            overtime_rate = :overtime_rate,
            attendance_allowance = :attendance_allowance,
            efficiency_bonus = :efficiency_bonus,
            boarding_allowance = :boarding_allowance,
            travel_allowance = :travel_allowance,
            has_lunch_allowance = :has_lunch_allowance,
            other_allowance = :other_allowance,
            time_frame = :time_frame,
            standard_hours = :standard_hours,
            standard_work_days = :standard_work_days,
            default_time_in = :default_time_in,
            default_time_out = :default_time_out,
            work_schedule = :work_schedule,
            start_date = :start_date,
            status = :status,
            resigned_date = :resigned_date,
            notes = :notes
        WHERE id = :id";

        $stmt = $this->db->prepare($sql);
        $ok = $stmt->execute([
            ':branch_id' => $data['branch_id'] ?? 1,
            ':employee_code' => trim($data['employee_code']),
            ':full_name' => trim($data['full_name']),
            ':position' => $data['position'] ?? '',
            ':phone' => $data['phone'] ?? '',
            ':salary_type' => $data['salary_type'] ?? 'FIXED',
            ':base_salary' => $data['base_salary'] ?? 0,
            ':probation_salary' => $data['probation_salary'] ?? 0,
            ':official_salary' => $data['official_salary'] ?? ($data['base_salary'] ?? 0),
            ':hourly_rate' => $data['hourly_rate'] ?? 0,
            ':overtime_rate' => $data['overtime_rate'] ?? 150000,
            ':attendance_allowance' => $data['attendance_allowance'] ?? 0,
            ':efficiency_bonus' => $data['efficiency_bonus'] ?? 0,
            ':boarding_allowance' => $data['boarding_allowance'] ?? 0,
            ':travel_allowance' => $data['travel_allowance'] ?? 0,
            ':has_lunch_allowance' => ((int)($data['branch_id'] ?? 0) === 2) ? 0 : (isset($data['has_lunch_allowance']) ? (int)$data['has_lunch_allowance'] : 1),
            ':other_allowance' => $data['other_allowance'] ?? 0,
            ':time_frame' => $data['time_frame'] ?? '',
            ':standard_hours' => $data['standard_hours'] ?? 8.0,
            ':standard_work_days' => $data['standard_work_days'] ?? 26.0,
            ':default_time_in' => !empty($data['default_time_in']) ? $data['default_time_in'] : null,
            ':default_time_out' => !empty($data['default_time_out']) ? $data['default_time_out'] : null,
            ':work_schedule' => $data['work_schedule'] ?? 'Thứ 2 - Thứ 7',
            ':start_date' => !empty($data['start_date']) ? $data['start_date'] : null,
            ':status' => $data['status'] ?? 'ACTIVE',
            ':resigned_date' => !empty($data['resigned_date']) ? $data['resigned_date'] : null,
            ':notes' => $data['notes'] ?? '',
            ':id' => $id
        ]);

        // Cập nhật hoặc tạo mới tài khoản đăng nhập nếu có thông tin
        if (!empty($data['create_account']) || !empty($data['account_username'])) {
            require_once __DIR__ . '/User.php';
            $userModel = new User();
            $userModel->createOrUpdateForEmployee(
                $id,
                $data,
                (int)($data['branch_id'] ?? 1),
                trim($data['full_name'])
            );
        }

        return $ok;
    }

    public function delete(int $id, bool $permanent = false, ?string $resignedDate = null): bool {
        if ($permanent) {
            try {
                $this->db->prepare("DELETE FROM users WHERE employee_id = :id")->execute([':id' => $id]);
            } catch (Throwable $e) {}
            $stmt = $this->db->prepare("DELETE FROM employees WHERE id = :id");
            return $stmt->execute([':id' => $id]);
        }
        try {
            $this->db->prepare("UPDATE users SET status = 'BLOCKED' WHERE employee_id = :id")->execute([':id' => $id]);
        } catch (Throwable $e) {}
        
        $rDate = !empty($resignedDate) ? $resignedDate : date('Y-m-d');
        $stmt = $this->db->prepare("UPDATE employees SET status = 'RESIGNED', resigned_date = :r_date WHERE id = :id");
        return $stmt->execute([':id' => $id, ':r_date' => $rDate]);
    }
}
