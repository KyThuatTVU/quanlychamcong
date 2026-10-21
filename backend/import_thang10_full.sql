-- ============================================================
-- DỮ LIỆU ĐẦY ĐỦ THÁNG 10/2026 TRÍCH XUẤT TỪ CẢ 4 FILE EXCEL
-- NGÀY TRÍCH XUẤT: 20/10/2026 (KHÔNG BỎ SÓT BẤT KỲ DÒNG/Ô NÀO)
-- ============================================================
USE `happykids_hrm`;


-- ---------------------------------------------------------
-- 1. CHẤM CÔNG HÀNG NGÀY: CL_CUNG (Branch 1, FIXED)
-- ---------------------------------------------------------
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-01', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-01', '07:13:00', '10:41:00', 13, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-01', '06:45:00', '17:29:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-01', '07:38:00', '19:09:00', 0, 1,
    2.02, 'X + TC', 'X + TC', 2.02, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-01', '07:48:00', '17:29:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-01', '06:53:00', '16:34:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-01', '07:52:00', '17:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-01', '07:37:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-01', '07:30:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-01', '07:03:00', '16:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-02', '07:40:00', '19:06:00', 0, 1,
    1.93, 'X + TC', 'X + TC', 1.93, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-02', '07:00:00', '10:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-02', '06:47:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-02', '07:40:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-02', '07:46:00', '17:37:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-02', '06:50:00', '16:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-02', '07:40:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-02', '07:34:00', '17:37:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-02', '07:30:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-02', '07:15:00', '16:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-03', '07:43:00', '16:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-03', '07:00:00', '10:51:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-03', '06:49:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-03', '07:43:00', '19:13:00', 0, 1,
    2.0, 'X + TC', 'X + TC', 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-03', '07:56:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-03', '06:55:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-03', '07:42:00', '17:37:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-03', '07:35:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-03', '07:30:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-03', '07:10:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-04', NULL, NULL, 0, 1,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-05', '06:49:00', '17:28:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-05', '07:00:00', '10:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-05', '06:45:00', '17:28:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-05', '07:37:00', '17:00:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-05', '07:00:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-05', '07:50:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-05', '07:45:00', '17:34:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-05', '07:20:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-05', '07:20:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-05', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-06', '07:43:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-06', '07:00:00', '10:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-06', '06:48:00', '17:34:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-06', '07:38:00', '19:05:00', 0, 1,
    1.95, 'X + TC', 'X + TC', 1.95, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-06', '06:56:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-06', '07:52:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-06', '07:44:00', '17:38:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-06', '07:26:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-06', '07:21:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-06', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-07', '07:42:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-07', '07:00:00', '10:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-07', '06:46:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-07', '07:36:00', '17:30:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-07', '06:47:00', '16:38:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-07', '06:50:00', '16:37:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-07', '07:47:00', '17:44:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-07', '07:26:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-07', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-07', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-08', '08:00:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', ''
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-08', '06:57:00', '10:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-08', '06:41:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-08', '07:34:00', '17:30:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-08', '07:01:00', '16:29:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-08', '06:52:00', '16:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-08', '07:46:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-08', '07:34:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-08', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-08', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-09', '07:57:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-09', '06:59:00', '10:28:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-09', '06:44:00', '17:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-09', '07:34:00', '17:30:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-09', '06:50:00', '16:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-09', '06:51:00', '16:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-09', '07:49:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-09', '07:35:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-09', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-09', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-10', '08:00:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-10', '06:59:00', '10:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-10', '06:46:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-10', '07:36:00', '17:44:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-10', '06:59:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-10', '06:48:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-10', '07:51:00', '17:44:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-10', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-10', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-10', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-12', '07:49:00', '19:01:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-12', '06:58:00', '10:52:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-12', '06:43:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-12', '07:41:00', '19:10:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-12', '07:51:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-12', '06:50:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-12', '07:50:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-12', '07:33:00', '17:34:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-12', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-12', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-13', '07:45:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-13', '06:54:00', '10:54:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-13', '06:57:00', '17:29:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-13', '07:53:00', '19:14:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-13', '06:59:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-13', '06:51:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-13', '07:51:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-13', '07:37:00', '17:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-13', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-13', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-14', NULL, NULL, 0, 0,
    0.0, 'P', 'P', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-14', '07:00:00', '10:42:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-14', '06:48:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-14', '07:35:00', '19:24:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-14', '06:56:00', '16:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-14', '06:50:00', '16:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-14', '07:50:00', '17:36:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-14', '07:39:00', '19:24:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-14', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-14', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-15', '06:37:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-15', '07:00:00', '10:43:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-15', '06:43:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-15', '07:36:00', '19:07:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-15', '06:51:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-15', '06:44:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-15', '07:52:00', '17:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-15', '07:37:00', '19:07:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-15', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-15', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-16', '07:38:00', '19:02:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-16', '07:00:00', '10:54:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-16', '06:23:00', '17:00:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-16', '07:38:00', '19:04:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-16', '06:50:00', '16:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-16', '06:50:00', '16:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-16', '07:49:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-16', '07:38:00', '17:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-16', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-16', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-17', NULL, NULL, 0, 0,
    0.0, 'P', 'P', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-17', '08:00:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-17', '06:47:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-17', '07:30:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-17', '06:54:00', '16:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-17', '06:47:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-17', '07:35:00', '17:35:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-17', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-17', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-17', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-19', '07:47:00', '19:06:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-19', '07:00:00', '10:48:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-19', '06:46:00', '17:30:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-19', '07:41:00', '19:06:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-19', '06:49:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-19', '06:46:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-19', '07:47:00', '17:39:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-19', '07:36:00', '17:38:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-19', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-19', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-20', '07:35:00', '17:29:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-20', '06:58:00', '10:57:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-20', '06:39:00', '17:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-20', '07:39:00', '19:01:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-20', '06:59:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-20', '06:40:00', '16:31:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-20', '07:39:00', '17:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-20', '07:37:00', '19:01:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-20', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-20', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    1, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    2, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    3, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    4, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    5, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    6, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    7, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    8, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    9, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    10, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);

-- ---------------------------------------------------------
-- 2. TỔNG HỢP LƯƠNG THÁNG 10: CL_CUNG
-- ---------------------------------------------------------
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    1, 10, 2026, 16.0, 6.43, 4,
    0, 0, 0, 0,
    7500000.0, 4615385.0, 0, 480000.0, 0.0,
    500000.0, 400000.0, 0.0, 5995385.0, 0.0, 5995385.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    2, 10, 2026, 17.0, 0.0, 0,
    0, 0, 1, 13,
    7000000.0, 4576923.0, 0, 0.0, 0.0,
    300000.0, 425000.0, 0.0, 5301923.0, 0.0, 5301923.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    3, 10, 2026, 17.0, 0.0, 0,
    0, 0, 0, 0,
    6800000.0, 4446154.0, 0, 0.0, 0.0,
    300000.0, 425000.0, 0.0, 5171154.0, 0.0, 5171154.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    4, 10, 2026, 17.0, 20.97, 13,
    0, 0, 0, 0,
    7200000.0, 4707692.0, 0, 1560000.0, 0.0,
    400000.0, 425000.0, 0.0, 7092692.0, 0.0, 7092692.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    5, 10, 2026, 17.0, 0.0, 0,
    0, 0, 0, 0,
    7500000.0, 4903846.0, 0, 0.0, 0.0,
    500000.0, 425000.0, 0.0, 5828846.0, 0.0, 5828846.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    6, 10, 2026, 17.0, 0.0, 0,
    0, 0, 0, 0,
    7500000.0, 4903846.0, 0, 0.0, 0.0,
    500000.0, 425000.0, 0.0, 5828846.0, 0.0, 5828846.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    7, 10, 2026, 17.0, 0.0, 0,
    0, 0, 0, 0,
    7000000.0, 4576923.0, 0, 0.0, 0.0,
    300000.0, 425000.0, 0.0, 5301923.0, 0.0, 5301923.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    8, 10, 2026, 15.0, 4.5, 3,
    0, 0, 0, 0,
    6800000.0, 3923077.0, 0, 360000.0, 0.0,
    300000.0, 375000.0, 0.0, 4958077.0, 0.0, 4958077.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    9, 10, 2026, 5.0, 0.0, 0,
    0, 0, 0, 0,
    7200000.0, 1384615.0, 0, 0.0, 0.0,
    400000.0, 125000.0, 0.0, 1909615.0, 0.0, 1909615.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    10, 10, 2026, 3.0, 0.0, 0,
    0, 0, 0, 0,
    7000000.0, 807692.0, 0, 0.0, 0.0,
    300000.0, 75000.0, 0.0, 1182692.0, 0.0, 1182692.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';

-- ---------------------------------------------------------
-- 1. CHẤM CÔNG HÀNG NGÀY: CL_GIO (Branch 1, HOURLY)
-- ---------------------------------------------------------
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, '17:04:00', '19:10:00', 126,
    126, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối (17g30-19g) - 126p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ phép (P)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, '17:19:00', '19:10:00', 111,
    111, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối (17g30-19g) - 111p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, '17:02:00', '19:00:00', 118,
    118, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối (17g30-19g) - 118p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, '17:15:00', '19:17:00', 122,
    122, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca tối 122p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Ca sáng 90p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, '17:22:00', '19:19:00', 117,
    117, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca tối 117p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, '17:15:00', '19:08:00', 113,
    113, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca tối 113p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, '17:02:00', '19:22:00', 140,
    140, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca tối 140p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Ca sáng 90p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, '17:25:00', '19:23:00', 118,
    118, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca tối 118p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-03', '08:00:00', '09:30:00', 90,
    NULL, NULL, 90, NULL, NULL, 134,
    314, 3.0, 0, 3.0, 'Đã xác nhận', '2 ca trong ngày = 195p (2 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 113,
    113, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-04', NULL, NULL, 105,
    NULL, NULL, 0, NULL, NULL, 0,
    105, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 102,
    102, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-04', NULL, NULL, 131,
    NULL, NULL, 93, NULL, NULL, 96,
    320, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-05', NULL, NULL, 100,
    NULL, NULL, 0, NULL, NULL, 125,
    225, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 133,
    133, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 90,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-06', NULL, NULL, 149,
    NULL, NULL, 0, NULL, NULL, 0,
    149, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 114,
    114, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 127,
    127, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 107,
    107, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-07', NULL, NULL, 105,
    NULL, NULL, 0, NULL, NULL, 0,
    105, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 120,
    120, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 121,
    121, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-08', NULL, NULL, 151,
    NULL, NULL, 0, NULL, NULL, 0,
    151, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-08', NULL, NULL, 101,
    NULL, NULL, 0, NULL, NULL, 0,
    101, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-08', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 124,
    124, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-08', NULL, NULL, 104,
    NULL, NULL, 0, NULL, NULL, 0,
    104, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-08', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-09', NULL, NULL, 150,
    NULL, NULL, 0, NULL, NULL, 0,
    150, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-09', NULL, NULL, 103,
    NULL, NULL, 0, NULL, NULL, 121,
    224, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 133, NULL, NULL, 0,
    133, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 96, NULL, NULL, 99,
    195, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-11', NULL, NULL, 117,
    NULL, NULL, 0, NULL, NULL, 173,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ việc từ hôm nay'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 109,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-11', NULL, NULL, 107,
    NULL, NULL, 100, NULL, NULL, 101,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 121,
    121, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 113,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 105,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 131,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 129,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 107,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 113,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 95, NULL, NULL, 100,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 114,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-18', NULL, NULL, 130,
    NULL, NULL, 92, NULL, NULL, 99,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 110,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-18', NULL, NULL, 120,
    NULL, NULL, 95, NULL, NULL, 98,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-19', '07:45:00', '10:47:00', 182,
    NULL, NULL, 0, '17:27:00', '19:07:00', 100,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, '17:16:00', '19:22:00', 126,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, '17:17:00', '19:18:00', 121,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, '17:30:00', '19:06:00', 96,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-20', '07:48:00', '10:30:00', 162,
    NULL, NULL, 0, '17:07:00', '19:02:00', 115,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, '17:24:00', '19:11:00', 107,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, '17:06:00', '19:03:00', 117,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    11, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    12, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    13, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    14, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    15, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);

-- ---------------------------------------------------------
-- 2. TỔNG HỢP LƯƠNG THÁNG 10: CL_GIO
-- ---------------------------------------------------------
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    11, 10, 2026, 0, 0, 0,
    32.0, 0, 0, 0,
    0, 0, 3840000.0, 0, 0.0,
    0, 0, 0.0, 3840000.0, 0.0, 3840000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    12, 10, 2026, 0, 0, 0,
    10.0, 0, 0, 0,
    0, 0, 1200000.0, 0, 0.0,
    0, 0, 0.0, 1200000.0, 0.0, 1200000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    13, 10, 2026, 0, 0, 0,
    18.0, 0, 0, 0,
    0, 0, 2160000.0, 0, 0.0,
    0, 0, 0.0, 2160000.0, 0.0, 2160000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    14, 10, 2026, 0, 0, 0,
    33.0, 0, 0, 0,
    0, 0, 4950000.0, 0, 0.0,
    0, 0, 0.0, 4950000.0, 0.0, 4950000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    15, 10, 2026, 0, 0, 0,
    2.0, 0, 0, 0,
    0, 0, 200000.0, 0, 0.0,
    0, 0, 0.0, 200000.0, 0.0, 200000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';

-- ---------------------------------------------------------
-- 1. CHẤM CÔNG HÀNG NGÀY: TN_CUNG (Branch 2, FIXED)
-- ---------------------------------------------------------
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-01', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-01', '08:42:00', '17:12:00', 12, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-02', NULL, NULL, 0, 1,
    0.0, 'P', 'P', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-02', '06:23:00', '16:45:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-03', '16:45:00', '18:32:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-03', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-04', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-05', '15:18:00', '20:03:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-05', '06:23:00', '17:06:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-06', '16:46:00', '18:33:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-06', '06:23:00', '16:52:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-07', '16:46:00', '20:00:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-07', '06:24:00', '16:55:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-08', '13:45:00', '15:30:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-08', '06:24:00', '16:58:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-09', '07:47:00', '16:09:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-09', '06:24:00', '17:19:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-10', '07:44:00', '17:04:00', 0, 1,
    1.0, 'X + TC', 'X + TC', 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-10', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-11', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-12', '07:44:00', '16:01:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-12', '06:23:00', '17:04:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-13', '07:48:00', '17:01:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-13', '06:21:00', '17:02:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-14', '07:48:00', '16:00:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-14', '06:23:00', '17:00:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-15', '07:43:00', '17:04:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-15', '06:23:00', '16:55:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-16', '07:44:00', '16:59:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-16', '06:23:00', '17:02:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-17', '07:42:00', '16:56:00', 0, 0,
    0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-17', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-18', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-19', '07:50:00', '16:57:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-19', '06:22:00', '16:59:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-20', '07:44:00', '16:58:00', 0, 1,
    1.5, 'X + TC', 'X + TC', 1.5, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-20', '06:23:00', '17:02:00', 0, 0,
    0.0, 'X', 'X', 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-21', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-22', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-23', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-24', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-25', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-26', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-27', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-28', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-29', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-30', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    16, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `time_in`, `time_out`, `late_minutes`, `is_overtime`,
    `ot_hours`, `work_symbol`, `salary_symbol`, `ot_salary_hours`, `confirmation_status`, `notes`
) VALUES (
    17, '2026-10-31', NULL, NULL, 0, 0,
    0.0, '-', '-', 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `time_in` = VALUES(`time_in`), `time_out` = VALUES(`time_out`), `late_minutes` = VALUES(`late_minutes`),
    `is_overtime` = VALUES(`is_overtime`), `ot_hours` = VALUES(`ot_hours`), `work_symbol` = VALUES(`work_symbol`),
    `salary_symbol` = VALUES(`salary_symbol`), `ot_salary_hours` = VALUES(`ot_salary_hours`),
    `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);

-- ---------------------------------------------------------
-- 2. TỔNG HỢP LƯƠNG THÁNG 10: TN_CUNG
-- ---------------------------------------------------------
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    16, 10, 2026, 16.0, 11.5, 8,
    0, 0, 0, 0,
    6000000.0, 3692308.0, 0, 960000.0, 0.0,
    1000000.0, 400000.0, 0.0, 6052308.0, 0.0, 6052308.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `status`
) VALUES (
    17, 10, 2026, 14.0, 0.0, 0,
    0, 0, 1, 12,
    7000000.0, 3769231.0, 0, 0.0, 500000.0,
    300000.0, 350000.0, 0.0, 4919231.0, 0.0, 4919231.0, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_days_x` = VALUES(`total_days_x`), `total_ot_hours` = VALUES(`total_ot_hours`), `ot_count` = VALUES(`ot_count`),
    `late_count` = VALUES(`late_count`), `total_late_minutes` = VALUES(`total_late_minutes`),
    `base_salary` = VALUES(`base_salary`), `salary_by_days` = VALUES(`salary_by_days`), `ot_pay` = VALUES(`ot_pay`),
    `boarding_pay` = VALUES(`boarding_pay`), `attendance_allowance` = VALUES(`attendance_allowance`),
    `lunch_allowance` = VALUES(`lunch_allowance`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `status` = 'CONFIRMED';

-- ---------------------------------------------------------
-- 1. CHẤM CÔNG HÀNG NGÀY: TN_GIO (Branch 2, HOURLY)
-- ---------------------------------------------------------
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, '16:54:00', '18:30:00', 96,
    96, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối T3,5,7 (16h54-18h30) 96p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, '16:56:00', '18:30:00', 94,
    94, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối T3,5,7 (16h56-18h30) 94p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-01', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ / Lịch T2,4,6'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-01', NULL, NULL, 0,
    '14:27:00', '18:22:00', 235, NULL, NULL, 0,
    210, 2.33, 0, 2.33, 'Đã xác nhận', '3.5 giờ = 2 ca + 1 ca gãy (30p)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ (Lịch T3,5,7)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, '16:43:00', '20:18:00', 215,
    215, 2.0, 0, 2.0, 'Đã xác nhận', 'Làm thế Cô Hiền (16h43-20h18) 215p (2 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-02', NULL, NULL, 0,
    NULL, NULL, 0, '16:44:00', '20:17:00', 213,
    213, 2.0, 0, 2.0, 'Đã xác nhận', 'Ca Tối T2,4,6 (16h44-20h17) 213p (2 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-02', NULL, NULL, 0,
    '14:28:00', '20:01:00', 333, NULL, NULL, 0,
    300, 3.33, 0, 3.33, 'Đã xác nhận', '5.0 giờ = 3 ca + 1 ca gãy (30p)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, '16:57:00', '18:37:00', 100,
    100, 1.0, 0, 1.0, 'Đã xác nhận', 'Ca Tối T3,5,7 (16h57-18h37) 100p (1 ca)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ (Lịch T3,5,7)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-03', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', 'Nghỉ (Lịch T2,4,6)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-03', NULL, NULL, 0,
    '14:26:00', '20:09:00', 343, NULL, NULL, 0,
    300, 3.33, 0, 3.33, 'Đã xác nhận', '5.0 giờ = 3 ca + 1 ca gãy (30p)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-04', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-05', NULL, NULL, 0,
    NULL, NULL, 0, '16:58:00', '20:00:00', 182,
    182, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-05', NULL, NULL, 0,
    '14:30:00', '20:00:00', 330, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', '4.5 giờ = 3 ca chuẩn'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-06', NULL, NULL, 0,
    NULL, NULL, 0, '16:50:00', '18:37:00', 107,
    107, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-06', NULL, NULL, 0,
    '14:29:00', '20:05:00', 336, NULL, NULL, 0,
    240, 2.67, 0, 2.67, 'Đã xác nhận', '4.0 giờ = 2 ca + 1 ca gãy (1h)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, '16:48:00', '20:00:00', 192,
    192, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-07', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-07', NULL, NULL, 0,
    '16:30:00', '20:00:00', 210, NULL, NULL, 0,
    180, 2.0, 0, 2.0, 'Đã xác nhận', '3.0 giờ = 2 ca chuẩn'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-08', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-08', NULL, NULL, 0,
    NULL, NULL, 0, '16:52:00', '18:33:00', 101,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-08', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-08', NULL, NULL, 0,
    '15:00:00', '20:00:00', 300, NULL, NULL, 0,
    240, 2.67, 0, 2.67, 'Đã xác nhận', '4.0 giờ = 2 ca + 1 ca gãy (1h)'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 0, '17:00:00', '20:00:00', 180,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-09', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, '16:57:00', '18:40:00', 103,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, '17:01:00', '18:40:00', 99,
    99, 1.0, 1, 1.0, 'Đã xác nhận', 'BT'
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-10', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-11', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, '16:44:00', '20:02:00', 198,
    198, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-12', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    360, 4.0, 0, 4.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, '16:55:00', '18:57:00', 122,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, '16:55:00', '18:40:00', 105,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-13', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    360, 4.0, 0, 4.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, '17:00:00', '20:02:00', 182,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-14', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    360, 4.0, 0, 4.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, '16:55:00', '18:34:00', 99,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, '16:52:00', '18:33:00', 101,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-15', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    360, 4.0, 0, 4.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, '16:56:00', '20:07:00', 191,
    191, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-16', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    300, 3.33, 0, 3.33, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, '16:54:00', '18:52:00', 118,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, '16:56:00', '18:35:00', 99,
    99, 1.0, 1, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-17', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-18', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, '16:53:00', '20:00:00', 187,
    180, 2.0, 0, 2.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-19', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    270, 3.0, 0, 3.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, '16:44:00', '18:30:00', 106,
    90, 1.0, 0, 1.0, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-20', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    330, 3.67, 0, 3.67, 'Đã xác nhận', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-21', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-22', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-23', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-24', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-25', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-26', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-27', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-28', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-29', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-30', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    18, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    19, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    20, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);
INSERT INTO `daily_attendance` (
    `employee_id`, `work_date`, `morning_in`, `morning_out`, `morning_minutes`,
    `afternoon_in`, `afternoon_out`, `afternoon_minutes`, `evening_in`, `evening_out`, `evening_minutes`,
    `total_minutes`, `total_slots`, `has_boarding`, `actual_slots`, `confirmation_status`, `notes`
) VALUES (
    21, '2026-10-31', NULL, NULL, 0,
    NULL, NULL, 0, NULL, NULL, 0,
    0, 0.0, 0, 0.0, 'Chưa nhập', NULL
) ON DUPLICATE KEY UPDATE
    `morning_in` = VALUES(`morning_in`), `morning_out` = VALUES(`morning_out`), `morning_minutes` = VALUES(`morning_minutes`),
    `afternoon_in` = VALUES(`afternoon_in`), `afternoon_out` = VALUES(`afternoon_out`), `afternoon_minutes` = VALUES(`afternoon_minutes`),
    `evening_in` = VALUES(`evening_in`), `evening_out` = VALUES(`evening_out`), `evening_minutes` = VALUES(`evening_minutes`),
    `total_minutes` = VALUES(`total_minutes`), `total_slots` = VALUES(`total_slots`), `has_boarding` = VALUES(`has_boarding`),
    `actual_slots` = VALUES(`actual_slots`), `confirmation_status` = VALUES(`confirmation_status`), `notes` = VALUES(`notes`);

-- ---------------------------------------------------------
-- 2. TỔNG HỢP LƯƠNG THÁNG 10: TN_GIO
-- ---------------------------------------------------------
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    18, 10, 2026, 0, 0, 0,
    7.0, 0, 0, 0,
    0, 0, 840000.0, 0, 0.0,
    0, 0, 0.0, 840000.0, 0.0, 840000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    19, 10, 2026, 0, 0, 0,
    11.0, 0, 0, 0,
    0, 0, 1320000.0, 0, 0.0,
    0, 0, 0.0, 1320000.0, 0.0, 1320000.0, 'Có 2 buổi Bán Trú (BT)', 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    20, 10, 2026, 0, 0, 0,
    15.0, 0, 0, 0,
    0, 0, 1800000.0, 0, 0.0,
    0, 0, 0.0, 1800000.0, 0.0, 1800000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';
INSERT INTO `monthly_payroll` (
    `employee_id`, `month`, `year`, `total_days_x`, `total_ot_hours`, `ot_count`,
    `total_slots`, `total_boarding_days`, `late_count`, `total_late_minutes`,
    `base_salary`, `salary_by_days`, `salary_by_slots`, `ot_pay`, `boarding_pay`,
    `attendance_allowance`, `lunch_allowance`, `bonus`, `total_income`, `deductions`, `net_salary`, `note`, `status`
) VALUES (
    21, 10, 2026, 0, 0, 0,
    48.33, 0, 0, 0,
    0, 0, 7250000.0, 0, 0.0,
    0, 0, 0.0, 7250000.0, 0.0, 7250000.0, NULL, 'CONFIRMED'
) ON DUPLICATE KEY UPDATE
    `total_slots` = VALUES(`total_slots`), `salary_by_slots` = VALUES(`salary_by_slots`),
    `boarding_pay` = VALUES(`boarding_pay`), `bonus` = VALUES(`bonus`), `total_income` = VALUES(`total_income`),
    `deductions` = VALUES(`deductions`), `net_salary` = VALUES(`net_salary`), `note` = VALUES(`note`), `status` = 'CONFIRMED';