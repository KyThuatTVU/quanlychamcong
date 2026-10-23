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

// 2. LƯU CLIENT ID GOOGLE (Chỉ SUPER_ADMIN)
if ($action === 'save_client_id') {
    $currentUser = AuthHelper::getCurrentUser();
    if (!$currentUser || ($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
        jsonResponse('error', null, 'Bạn không có quyền chỉnh sửa cấu hình Google OAuth', 403);
    }

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

// 4. DANH SÁCH TÀI KHOẢN NGƯỜI DÙNG (Chỉ Quản trị viên mới xem được)
if ($action === 'get_users') {
    $currentUser = AuthHelper::getCurrentUser();
    if (!$currentUser || ($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
        jsonResponse('error', null, 'Bạn không có quyền truy cập danh sách tài khoản', 403);
    }

    try {
        $userModel = new User();
        $users = $userModel->getAll();
        jsonResponse('success', $users);
    } catch (Throwable $e) {
        jsonResponse('error', null, 'Lỗi lấy danh sách tài khoản: ' . $e->getMessage(), 500);
    }
}

// 5. THÊM TÀI KHOẢN MỚI (Hỗ trợ cả Mật khẩu và Google ID, chỉ SUPER_ADMIN)
if ($action === 'add_user') {
    $currentUser = AuthHelper::getCurrentUser();
    if (!$currentUser || ($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
        jsonResponse('error', null, 'Chỉ Quản Trị Viên mới có quyền thêm tài khoản người dùng', 403);
    }

    $input = getJsonInput();
    try {
        $userModel = new User();
        $newUser = $userModel->createAccount($input, $currentUser);
        jsonResponse('success', $newUser, 'Đã tạo tài khoản thành công');
    } catch (Throwable $e) {
        jsonResponse('error', null, $e->getMessage(), 400);
    }
}

// 6. XÓA TÀI KHOẢN (Chỉ SUPER_ADMIN, không thể xóa Admin)
if ($action === 'delete_user') {
    $currentUser = AuthHelper::getCurrentUser();
    if (!$currentUser || ($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
        jsonResponse('error', null, 'Bạn không có quyền xóa tài khoản', 403);
    }

    $input = getJsonInput();
    $userId = (int)($input['id'] ?? ($_GET['id'] ?? 0));
    if (!$userId) {
        jsonResponse('error', null, 'Thiếu ID tài khoản cần xóa', 400);
    }

    try {
        $userModel = new User();
        $userModel->deleteUser($userId, $currentUser);
        jsonResponse('success', ['id' => $userId], 'Đã xóa tài khoản thành công');
    } catch (Throwable $e) {
        jsonResponse('error', null, $e->getMessage(), 400);
    }
}

// 7. ĐĂNG NHẬP BẰNG TÊN ĐĂNG NHẬP / EMAIL VÀ MẬT KHẨU
if ($action === 'login_password') {
    $input = getJsonInput();
    $login = trim($input['login'] ?? ($input['email'] ?? ($input['username'] ?? '')));
    $password = trim($input['password'] ?? '');

    if (empty($login) || empty($password)) {
        jsonResponse('error', null, 'Vui lòng nhập tên đăng nhập / email và mật khẩu', 400);
    }

    try {
        $userModel = new User();
        $user = $userModel->authenticate($login, $password);

        if (!$user) {
            jsonResponse('error', null, 'Tên đăng nhập hoặc mật khẩu không chính xác', 401);
        }

        if (($user['status'] ?? '') === 'BLOCKED') {
            jsonResponse('error', null, 'Tài khoản của bạn đã bị khóa', 403);
        }

        AuthHelper::setCurrentUser($user);
        jsonResponse('success', [
            'user' => $user,
            'session_id' => session_id()
        ], 'Đăng nhập thành công');
    } catch (Throwable $e) {
        jsonResponse('error', null, 'Lỗi đăng nhập: ' . $e->getMessage(), 500);
    }
}

// 8. XỬ LÝ ĐĂNG NHẬP GOOGLE HOẶC DEV TEST
$input = getJsonInput();
$credential = $input['credential'] ?? '';

// Chế độ DEV TEST (cho phép đăng nhập nhanh tài khoản quản trị khi đang thử nghiệm cục bộ)
if (!empty($input['is_dev_test'])) {
    $devUser = [
        'id' => 1,
        'google_id' => 'dev_admin_happykids',
        'username' => 'admin',
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
} catch (Throwable $e) {
    jsonResponse('error', null, $e->getMessage(), 403);
}
