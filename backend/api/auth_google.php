<?php
require_once __DIR__ . '/../helpers/response.php';
require_once __DIR__ . '/../helpers/auth.php';
require_once __DIR__ . '/../models/User.php';

$action = $_GET['action'] ?? 'login';

// 1. LẤY CLIENT ID GOOGLE
if ($action === 'get_client_id') {
    $clientId = AuthHelper::getClientId();
    $isConfigured = (!empty($clientId) && $clientId !== 'YOUR_GOOGLE_CLIENT_ID.apps.googleusercontent.com');
    jsonResponse('success', [
        'client_id' => $clientId,
        'is_configured' => $isConfigured
    ]);
}

// 2. LƯU CLIENT ID GOOGLE
if ($action === 'save_client_id') {
    $input = getJsonInput();
    $newClientId = trim($input['client_id'] ?? '');
    if (empty($newClientId)) {
        jsonResponse('error', null, 'Vui lòng nhập Google Client ID', 400);
    }
    $saved = AuthHelper::saveClientId($newClientId);
    if ($saved) {
        jsonResponse('success', ['client_id' => $newClientId], 'Lưu Google Client ID thành công');
    } else {
        jsonResponse('error', null, 'Không thể ghi file cấu hình Client ID', 500);
    }
}

// 3. ĐĂNG XUẤT
if ($action === 'logout') {
    AuthHelper::logout();
    jsonResponse('success', null, 'Đã đăng xuất thành công');
}

// 4. DANH SÁCH TÀI KHOẢN NGƯỜI DÙNG
if ($action === 'get_users') {
    try {
        $userModel = new User();
        $users = $userModel->getAll();
        jsonResponse('success', $users);
    } catch (Throwable $e) {
        jsonResponse('error', null, 'Lỗi lấy danh sách tài khoản: ' . $e->getMessage(), 500);
    }
}

// 5. THÊM TÀI KHOẢN GOOGLE TIỀN ỦY QUYỀN
if ($action === 'add_user') {
    $input = getJsonInput();
    $email = strtolower(trim($input['email'] ?? ''));
    $name = trim($input['name'] ?? '');
    $role = trim($input['role'] ?? 'SUPER_ADMIN');

    if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        jsonResponse('error', null, 'Email Google không hợp lệ', 400);
    }

    try {
        $db = Database::getConnection();
        $check = $db->prepare("SELECT id FROM users WHERE email = :email LIMIT 1");
        $check->execute([':email' => $email]);
        if ($check->fetch()) {
            jsonResponse('error', null, 'Email này đã tồn tại trong hệ thống', 400);
        }

        $ins = $db->prepare("
            INSERT INTO users (email, name, role, status, created_at)
            VALUES (:email, :name, :role, 'ACTIVE', NOW())
        ");
        $ins->execute([
            ':email' => $email,
            ':name' => $name ?: explode('@', $email)[0],
            ':role' => $role
        ]);
        jsonResponse('success', ['id' => $db->lastInsertId()], 'Đã thêm tài khoản Google thành công');
    } catch (Throwable $e) {
        jsonResponse('error', null, 'Lỗi thêm tài khoản: ' . $e->getMessage(), 500);
    }
}

// 6. XỬ LÝ ĐĂNG NHẬP (LOGIN)
$input = getJsonInput();
$credential = $input['credential'] ?? '';

// Chế độ DEV TEST (cho phép đăng nhập nhanh tài khoản quản trị khi đang thử nghiệm cục bộ)
if (!empty($input['is_dev_test'])) {
    $devUser = [
        'id' => 1,
        'google_id' => 'dev_admin_happykids',
        'email' => 'admin@happykids.edu.vn',
        'name' => 'Quản Trị Viên HappyKids',
        'avatar' => 'https://ui-avatars.com/api/?name=HappyKids+Admin&background=1B365D&color=fff',
        'role' => 'SUPER_ADMIN',
        'branch_id' => 1
    ];
    try {
        $userModel = new User();
        $user = $userModel->findOrCreateFromGoogle($devUser);
        AuthHelper::setCurrentUser($user);
        jsonResponse('success', $user, 'Đăng nhập chế độ thử nghiệm thành công');
    } catch (Throwable $e) {
        AuthHelper::setCurrentUser($devUser);
        jsonResponse('success', $devUser, 'Đăng nhập chế độ thử nghiệm (Offline Mode) thành công');
    }
}

if (empty($credential)) {
    jsonResponse('error', null, 'Thiếu thông tin xác thực Google (credential)', 400);
}

// Xác thực Google ID Token
$googleData = AuthHelper::verifyGoogleIdToken($credential);

if (!$googleData) {
    jsonResponse('error', null, 'Xác thực Google ID Token không hợp lệ hoặc đã hết hạn', 401);
}

try {
    $userModel = new User();
    $user = $userModel->findOrCreateFromGoogle($googleData);
    AuthHelper::setCurrentUser($user);

    jsonResponse('success', [
        'user' => $user,
        'session_id' => session_id()
    ], 'Đăng nhập Google thành công');
} catch (Exception $e) {
    jsonResponse('error', null, 'Lỗi hệ thống khi đăng nhập: ' . $e->getMessage(), 500);
}
