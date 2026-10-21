<?php
require_once __DIR__ . '/../config/database.php';

class Setting {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getByBranch(int $branchId): array {
        $stmt = $this->db->prepare("SELECT * FROM system_config WHERE branch_id = :branch_id LIMIT 1");
        $stmt->execute([':branch_id' => $branchId]);
        $cfg = $stmt->fetch();
        if (!$cfg) {
            // Khởi tạo mặc định nếu chưa có
            $ins = $this->db->prepare("
                INSERT INTO system_config (branch_id, standard_work_days, standard_day_minutes, slot_duration_minutes, default_ot_rate, default_slot_rate, lunch_allowance)
                VALUES (:b, 26, 480, 90, 120000, 120000, 25000)
            ");
            $ins->execute([':b' => $branchId]);
            return $this->getByBranch($branchId);
        }
        return $cfg;
    }

    public function update(int $branchId, array $data): bool {
        $stdDays = (int)($data['standard_work_days'] ?? 26);
        $stdMins = (int)($data['standard_day_minutes'] ?? 480);
        $slotMins = (int)($data['slot_duration_minutes'] ?? 90);
        $otRate = (float)($data['default_ot_rate'] ?? 120000);
        $slotRate = (float)($data['default_slot_rate'] ?? 120000);
        $lunchRate = (float)($data['lunch_allowance'] ?? 25000);

        // Đảm bảo đã có bản ghi cấu hình cho branch_id
        $this->getByBranch($branchId);

        $stmt = $this->db->prepare("
            UPDATE system_config SET
                standard_work_days = :std_days,
                standard_day_minutes = :std_mins,
                slot_duration_minutes = :slot_mins,
                default_ot_rate = :ot_rate,
                default_slot_rate = :slot_rate,
                lunch_allowance = :lunch_rate,
                updated_at = NOW()
            WHERE branch_id = :branch_id
        ");
        $ok = $stmt->execute([
            ':std_days' => $stdDays,
            ':std_mins' => $stdMins,
            ':slot_mins' => $slotMins,
            ':ot_rate' => $otRate,
            ':slot_rate' => $slotRate,
            ':lunch_rate' => $lunchRate,
            ':branch_id' => $branchId
        ]);

        // Nếu người dùng chọn đồng bộ đơn giá cho giáo viên thuộc chi nhánh
        $syncEmployees = !isset($data['sync_employees']) || !empty($data['sync_employees']);
        if ($syncEmployees) {
            // Cập nhật đơn giá tăng ca cho GV lương cố định của chi nhánh
            $upEmp = $this->db->prepare("
                UPDATE employees 
                SET overtime_rate = :ot_rate 
                WHERE branch_id = :branch_id AND salary_type = 'FIXED'
            ");
            $upEmp->execute([':ot_rate' => $otRate, ':branch_id' => $branchId]);

            // Cập nhật đơn giá tiết dạy cho GV dạy theo giờ của chi nhánh
            $upHourly = $this->db->prepare("
                UPDATE employees 
                SET hourly_rate = :slot_rate 
                WHERE branch_id = :branch_id AND salary_type = 'HOURLY'
            ");
            $upHourly->execute([':slot_rate' => $slotRate, ':branch_id' => $branchId]);
        }

        return $ok;
    }
}
