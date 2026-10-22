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

            // Đồng bộ dữ liệu mẫu định mức tháng 9 cho 8 cô chi nhánh Càng Long
            $this->syncSeptemberSampleProfiles();
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

    public function getList(int $branchId = 0, string $salaryType = '', string $status = 'ACTIVE'): array {
        $sql = "SELECT e.*, b.name as branch_name, b.code as branch_code 
                FROM employees e
                JOIN branches b ON e.branch_id = b.id
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
        if (!empty($status)) {
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
            SELECT e.*, b.name as branch_name, b.code as branch_code 
            FROM employees e
            JOIN branches b ON e.branch_id = b.id
            WHERE e.id = :id LIMIT 1
        ");
        $stmt->execute([':id' => $id]);
        $res = $stmt->fetch();
        return $res ?: null;
    }

    public function create(array $data): int {
        $sql = "INSERT INTO employees (
            branch_id, employee_code, full_name, position, phone, salary_type,
            base_salary, hourly_rate, overtime_rate, attendance_allowance, boarding_allowance,
            travel_allowance, has_lunch_allowance, other_allowance, time_frame, standard_hours, standard_work_days,
            default_time_in, default_time_out, work_schedule, status, notes
        ) VALUES (
            :branch_id, :employee_code, :full_name, :position, :phone, :salary_type,
            :base_salary, :hourly_rate, :overtime_rate, :attendance_allowance, :boarding_allowance,
            :travel_allowance, :has_lunch_allowance, :other_allowance, :time_frame, :standard_hours, :standard_work_days,
            :default_time_in, :default_time_out, :work_schedule, :status, :notes
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
            ':hourly_rate' => $data['hourly_rate'] ?? 0,
            ':overtime_rate' => $data['overtime_rate'] ?? 150000,
            ':attendance_allowance' => $data['attendance_allowance'] ?? 0,
            ':boarding_allowance' => $data['boarding_allowance'] ?? 0,
            ':travel_allowance' => $data['travel_allowance'] ?? 0,
            ':has_lunch_allowance' => isset($data['has_lunch_allowance']) ? (int)$data['has_lunch_allowance'] : 1,
            ':other_allowance' => $data['other_allowance'] ?? 0,
            ':time_frame' => $data['time_frame'] ?? '',
            ':standard_hours' => $data['standard_hours'] ?? 8.0,
            ':standard_work_days' => $data['standard_work_days'] ?? 26.0,
            ':default_time_in' => !empty($data['default_time_in']) ? $data['default_time_in'] : null,
            ':default_time_out' => !empty($data['default_time_out']) ? $data['default_time_out'] : null,
            ':work_schedule' => $data['work_schedule'] ?? 'Thứ 2 - Thứ 7',
            ':status' => $data['status'] ?? 'ACTIVE',
            ':notes' => $data['notes'] ?? ''
        ]);

        return (int)$this->db->lastInsertId();
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
            hourly_rate = :hourly_rate,
            overtime_rate = :overtime_rate,
            attendance_allowance = :attendance_allowance,
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
            status = :status,
            notes = :notes
        WHERE id = :id";

        $stmt = $this->db->prepare($sql);
        return $stmt->execute([
            ':branch_id' => $data['branch_id'] ?? 1,
            ':employee_code' => trim($data['employee_code']),
            ':full_name' => trim($data['full_name']),
            ':position' => $data['position'] ?? '',
            ':phone' => $data['phone'] ?? '',
            ':salary_type' => $data['salary_type'] ?? 'FIXED',
            ':base_salary' => $data['base_salary'] ?? 0,
            ':hourly_rate' => $data['hourly_rate'] ?? 0,
            ':overtime_rate' => $data['overtime_rate'] ?? 150000,
            ':attendance_allowance' => $data['attendance_allowance'] ?? 0,
            ':boarding_allowance' => $data['boarding_allowance'] ?? 0,
            ':travel_allowance' => $data['travel_allowance'] ?? 0,
            ':has_lunch_allowance' => isset($data['has_lunch_allowance']) ? (int)$data['has_lunch_allowance'] : 1,
            ':other_allowance' => $data['other_allowance'] ?? 0,
            ':time_frame' => $data['time_frame'] ?? '',
            ':standard_hours' => $data['standard_hours'] ?? 8.0,
            ':standard_work_days' => $data['standard_work_days'] ?? 26.0,
            ':default_time_in' => !empty($data['default_time_in']) ? $data['default_time_in'] : null,
            ':default_time_out' => !empty($data['default_time_out']) ? $data['default_time_out'] : null,
            ':work_schedule' => $data['work_schedule'] ?? 'Thứ 2 - Thứ 7',
            ':status' => $data['status'] ?? 'ACTIVE',
            ':notes' => $data['notes'] ?? '',
            ':id' => $id
        ]);
    }

    public function delete(int $id, bool $permanent = false): bool {
        if ($permanent) {
            $stmt = $this->db->prepare("DELETE FROM employees WHERE id = :id");
            return $stmt->execute([':id' => $id]);
        }
        $stmt = $this->db->prepare("UPDATE employees SET status = 'RESIGNED' WHERE id = :id");
        return $stmt->execute([':id' => $id]);
    }
}
