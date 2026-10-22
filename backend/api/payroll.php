<?php
require_once __DIR__ . '/../helpers/response.php';
require_once __DIR__ . '/../models/Payroll.php';
require_once __DIR__ . '/../models/Employee.php';

$method = $_SERVER['REQUEST_METHOD'];
$payrollModel = new Payroll();
$action = $_GET['action'] ?? 'summary';

switch ($method) {
    case 'GET':
        if ($action === 'payslip') {
            $employeeId = (int)($_GET['employee_id'] ?? 0);
            $month = (int)($_GET['month'] ?? date('n'));
            $year = (int)($_GET['year'] ?? date('Y'));

            if ($employeeId <= 0) {
                jsonResponse('error', null, 'Thiếu employee_id', 400);
            }

            $payslip = $payrollModel->getPayslip($employeeId, $month, $year);
            if (!$payslip) {
                $empModel = new Employee();
                $emp = $empModel->getById($employeeId);
                if ($emp) {
                    $payrollModel->calculateMonth((int)$emp['branch_id'], $emp['salary_type'], $month, $year);
                    $payslip = $payrollModel->getPayslip($employeeId, $month, $year);
                }
            }

            if (!$payslip) {
                jsonResponse('error', null, 'Chưa có dữ liệu phiếu lương cho nhân viên này', 404);
            }
            jsonResponse('success', $payslip);
        } else {
            // Tổng hợp bảng lương cả chi nhánh
            $branchId = (int)($_GET['branch_id'] ?? 1);
            $salaryType = $_GET['salary_type'] ?? 'FIXED';
            $month = (int)($_GET['month'] ?? date('n'));
            $year = (int)($_GET['year'] ?? date('Y'));
            $forceRecalc = !empty($_GET['force_recalculate']) || !empty($_GET['recalculate']);

            try {
                $summary = $payrollModel->getMonthlyList($branchId, $salaryType, $month, $year, $forceRecalc);
                jsonResponse('success', [
                    'branch_id' => $branchId,
                    'salary_type' => $salaryType,
                    'month' => $month,
                    'year' => $year,
                    'payroll_list' => $summary
                ]);
            } catch (Exception $e) {
                jsonResponse('error', null, 'Lỗi nạp bảng lương: ' . $e->getMessage(), 500);
            }
        }
        break;

    case 'POST':
        $data = getJsonInput();
        $employeeId = (int)($data['employee_id'] ?? 0);
        $month = (int)($data['month'] ?? date('n'));
        $year = (int)($data['year'] ?? date('Y'));

        if ($employeeId <= 0) {
            jsonResponse('error', null, 'Thiếu employee_id', 400);
        }

        try {
            if ($action === 'adjust') {
                // Điều chỉnh nhanh thưởng / chuyên cần cuối tháng / khấu trừ
                $db = Database::getConnection();
                $att = isset($data['attendance_allowance']) ? (float)$data['attendance_allowance'] : null;
                $bonus = (float)($data['bonus'] ?? 0);
                $deductions = (float)($data['deductions'] ?? 0);
                $note = $data['note'] ?? '';

                if ($att !== null) {
                    $stmt = $db->prepare("
                        UPDATE monthly_payroll 
                        SET attendance_allowance = :att, bonus = :bonus, deductions = :deductions, note = :note,
                            total_income = (salary_by_days + salary_by_slots + ot_pay + boarding_pay + :att + lunch_allowance + travel_allowance + :bonus),
                            net_salary = GREATEST(0, (salary_by_days + salary_by_slots + ot_pay + boarding_pay + :att + lunch_allowance + travel_allowance + :bonus) - :deductions)
                        WHERE employee_id = :emp_id AND month = :m AND year = :y
                    ");
                    $stmt->execute([
                        ':att' => $att,
                        ':bonus' => $bonus,
                        ':deductions' => $deductions,
                        ':note' => $note,
                        ':emp_id' => $employeeId,
                        ':m' => $month,
                        ':y' => $year
                    ]);
                } else {
                    $stmt = $db->prepare("
                        UPDATE monthly_payroll 
                        SET bonus = :bonus, deductions = :deductions, note = :note,
                            total_income = (salary_by_days + salary_by_slots + ot_pay + boarding_pay + attendance_allowance + lunch_allowance + travel_allowance + :bonus),
                            net_salary = GREATEST(0, (salary_by_days + salary_by_slots + ot_pay + boarding_pay + attendance_allowance + lunch_allowance + travel_allowance + :bonus) - :deductions)
                        WHERE employee_id = :emp_id AND month = :m AND year = :y
                    ");
                    $stmt->execute([
                        ':bonus' => $bonus,
                        ':deductions' => $deductions,
                        ':note' => $note,
                        ':emp_id' => $employeeId,
                        ':m' => $month,
                        ':y' => $year
                    ]);
                }
                jsonResponse('success', null, 'Đã cập nhật điều chỉnh lương thành công');
            } else {
                // Thêm dòng tính lương thủ công
                $saved = $payrollModel->saveManualPayroll($data);
                jsonResponse('success', $saved, 'Đã thêm dòng tính lương thành công');
            }
        } catch (Exception $e) {
            jsonResponse('error', null, 'Lỗi lưu bảng lương: ' . $e->getMessage(), 500);
        }
        break;

    case 'PUT':
        // Sửa đầy đủ thông số dòng lương
        $data = getJsonInput();
        $employeeId = (int)($data['employee_id'] ?? 0);
        $month = (int)($data['month'] ?? date('n'));
        $year = (int)($data['year'] ?? date('Y'));

        if ($employeeId <= 0) {
            jsonResponse('error', null, 'Thiếu employee_id', 400);
        }

        try {
            $saved = $payrollModel->saveManualPayroll($data);
            jsonResponse('success', $saved, 'Đã cập nhật thông số lương thành công');
        } catch (Exception $e) {
            jsonResponse('error', null, 'Lỗi cập nhật bảng lương: ' . $e->getMessage(), 500);
        }
        break;

    case 'DELETE':
        // Xóa dòng tính lương
        $id = (int)($_GET['id'] ?? 0);
        $empId = (int)($_GET['employee_id'] ?? 0);
        $month = (int)($_GET['month'] ?? 0);
        $year = (int)($_GET['year'] ?? 0);

        if ($id <= 0 && ($empId <= 0 || $month <= 0 || $year <= 0)) {
            jsonResponse('error', null, 'Thiếu thông tin nhận diện bản ghi để xóa (id hoặc employee_id + month + year)', 400);
        }

        try {
            $ok = $payrollModel->deletePayrollRecord($id, $empId, $month, $year);
            if ($ok) {
                jsonResponse('success', null, 'Đã xóa bản ghi tính lương thành công');
            } else {
                jsonResponse('error', null, 'Không tìm thấy bản ghi để xóa', 404);
            }
        } catch (Exception $e) {
            jsonResponse('error', null, 'Lỗi khi xóa bảng lương: ' . $e->getMessage(), 500);
        }
        break;

    default:
        jsonResponse('error', null, 'Phương thức không được hỗ trợ', 405);
}
