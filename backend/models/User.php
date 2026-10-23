<?php
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/../config/google.php';

class User {
    private PDO $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    /**
     * Xác thực khi đăng nhập Google:
     * - Chỉ Admin trong $DEFAULT_ADMIN_EMAILS hoặc tài khoản ĐÃ ĐƯỢC ADMIN TẠO TRƯỚC mới được phép vào.
     * - Tuyệt đối không tự động cho bất kỳ tài khoản lạ nào đăng nhập vào hệ thống.
     */
    public function findOrCreateFromGoogle(array $googleData): array {
        global $DEFAULT_ADMIN_EMAILS;
        $email = strtolower(trim($googleData['email'] ?? ''));
        $googleId = $googleData['google_id'] ?? null;
        $name = trim($googleData['name'] ?? '');
        $avatar = $googleData['avatar'] ?? null;

        if (empty($email)) {
            throw new Exception('Không tìm thấy thông tin email từ Google.');
        }

        // 1. Kiểm tra xem đã có user với email này trong hệ thống chưa
        $stmt = $this->db->prepare("SELECT * FROM users WHERE email = :email LIMIT 1");
        $stmt->execute([':email' => $email]);
        $user = $stmt->fetch();

        if ($user) {
            if (($user['status'] ?? '') === 'BLOCKED') {
                throw new Exception('Tài khoản của bạn đã bị khóa. Vui lòng liên hệ Quản trị viên.');
            }

            // Đồng bộ quyền: Nếu là email admin chính thức thì luôn là SUPER_ADMIN
            $role = in_array($email, $DEFAULT_ADMIN_EMAILS) ? 'SUPER_ADMIN' : $user['role'];

            // Cập nhật google_id, avatar, role và last_login
            $upd = $this->db->prepare("
                UPDATE users 
                SET google_id = :google_id, avatar = :avatar, name = :name, role = :role, last_login = NOW() 
                WHERE id = :id
            ");
            $upd->execute([
                ':google_id' => $googleId,
                ':avatar' => $avatar ?: $user['avatar'],
                ':name' => !empty($user['name']) ? $user['name'] : $name,
                ':role' => $role,
                ':id' => $user['id']
            ]);
            $user['role'] = $role;
            $user['avatar'] = $avatar ?: $user['avatar'];
            $user['last_login'] = date('Y-m-d H:i:s');
            unset($user['password']);
            return $user;
        }

        // 2. Nếu chưa có trong hệ thống: CHỈ CHO PHÉP nếu nằm trong danh sách Admin chính thức
        if (in_array($email, $DEFAULT_ADMIN_EMAILS)) {
            $ins = $this->db->prepare("
                INSERT INTO users (google_id, email, name, avatar, role, status, last_login, created_at)
                VALUES (:google_id, :email, :name, :avatar, 'SUPER_ADMIN', 'ACTIVE', NOW(), NOW())
            ");
            $ins->execute([
                ':google_id' => $googleId,
                ':email' => $email,
                ':name' => $name,
                ':avatar' => $avatar
            ]);

            $newId = (int)$this->db->lastInsertId();
            return $this->getById($newId);
        }

        // 3. Tài khoản Google lạ chưa được phân quyền -> CHẶN ĐĂNG NHẬP!
        throw new Exception("Tài khoản Google ({$email}) chưa được cấp quyền truy cập hệ thống. Vui lòng liên hệ Quản trị viên để được cấp tài khoản.");
    }

    /**
     * Xác thực tài khoản bằng Tên đăng nhập / Email và Mật khẩu
     */
    public function authenticate(string $login, string $password): ?array {
        $login = trim($login);
        if (empty($login) || empty($password)) {
            return null;
        }

        $stmt = $this->db->prepare("
            SELECT * FROM users 
            WHERE (email = :login1 OR username = :login2) 
              AND status = 'ACTIVE' 
            LIMIT 1
        ");
        $stmt->execute([
            ':login1' => $login,
            ':login2' => $login
        ]);
        $user = $stmt->fetch();

        if (!$user) {
            return null;
        }

        // Kiểm tra mật khẩu
        if (!empty($user['password'])) {
            $matched = password_verify($password, $user['password']);
            if (!$matched && $user['password'] === $password) {
                // Tự động chuyển đổi sang hash nếu trước đó lưu chuỗi gốc
                $newHash = password_hash($password, PASSWORD_DEFAULT);
                $upd = $this->db->prepare("UPDATE users SET password = :pwd WHERE id = :id");
                $upd->execute([':pwd' => $newHash, ':id' => $user['id']]);
                $matched = true;
            }
            if (!$matched) {
                return null;
            }
        } else {
            return null;
        }

        // Cập nhật thời điểm đăng nhập cuối
        $upd = $this->db->prepare("UPDATE users SET last_login = NOW() WHERE id = :id");
        $upd->execute([':id' => $user['id']]);

        unset($user['password']);
        return $user;
    }

    /**
     * Tạo tài khoản mới có mật khẩu
     */
    public function createAccount(array $data, ?array $currentUser = null): array {
        // Chỉ SUPER_ADMIN mới có quyền tạo tài khoản
        if ($currentUser && ($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
            throw new Exception('Bạn không có quyền thêm tài khoản. Chỉ Quản Trị Viên Toàn Quyền mới được thực hiện.');
        }

        $username = trim($data['username'] ?? '');
        $email = strtolower(trim($data['email'] ?? ''));
        $name = trim($data['name'] ?? '');
        $password = trim($data['password'] ?? '');
        $role = trim($data['role'] ?? 'STAFF');
        $branchId = !empty($data['branch_id']) ? (int)$data['branch_id'] : null;

        if (empty($name)) {
            throw new Exception('Vui lòng nhập họ và tên người dùng');
        }

        if (empty($password) || strlen($password) < 4) {
            throw new Exception('Mật khẩu phải có ít nhất 4 ký tự');
        }

        // Nếu không điền email, tự tạo email nội bộ từ username
        if (empty($email)) {
            if (empty($username)) {
                throw new Exception('Vui lòng nhập tên đăng nhập hoặc email');
            }
            $email = $username . '@happykids.local';
        }

        // Kiểm tra username trùng
        if (!empty($username)) {
            $chkUser = $this->db->prepare("SELECT id FROM users WHERE username = :un LIMIT 1");
            $chkUser->execute([':un' => $username]);
            if ($chkUser->fetch()) {
                throw new Exception('Tên đăng nhập "' . $username . '" đã được sử dụng');
            }
        }

        // Kiểm tra email trùng
        $chkEmail = $this->db->prepare("SELECT id FROM users WHERE email = :em LIMIT 1");
        $chkEmail->execute([':em' => $email]);
        if ($chkEmail->fetch()) {
            throw new Exception('Email "' . $email . '" đã tồn tại trong hệ thống');
        }

        // Hợp lệ hóa role
        $allowedRoles = ['SUPER_ADMIN', 'ADMIN_CANGLONG', 'ADMIN_TANNHUT', 'STAFF', 'VIEWER'];
        if (!in_array($role, $allowedRoles)) {
            $role = 'STAFF';
        }

        $hash = password_hash($password, PASSWORD_DEFAULT);
        $avatar = 'https://ui-avatars.com/api/?name=' . urlencode($name) . '&background=2563EB&color=fff';

        $ins = $this->db->prepare("
            INSERT INTO users (username, email, name, password, avatar, role, branch_id, status, created_at)
            VALUES (:username, :email, :name, :password, :avatar, :role, :branch_id, 'ACTIVE', NOW())
        ");
        $ins->execute([
            ':username' => !empty($username) ? $username : null,
            ':email' => $email,
            ':name' => $name,
            ':password' => $hash,
            ':avatar' => $avatar,
            ':role' => $role,
            ':branch_id' => $branchId
        ]);

        $newId = (int)$this->db->lastInsertId();
        return $this->getById($newId);
    }

    /**
     * Xóa tài khoản (bảo vệ tuyệt đối tài khoản quản trị và tài khoản bản thân)
     */
    public function deleteUser(int $id, array $currentUser): bool {
        if (($currentUser['role'] ?? '') !== 'SUPER_ADMIN') {
            throw new Exception('Bạn không có quyền xóa tài khoản.');
        }

        if ($id === (int)($currentUser['id'] ?? 0)) {
            throw new Exception('Không thể tự xóa tài khoản đang đăng nhập.');
        }

        $target = $this->getById($id);
        if (!$target) {
            throw new Exception('Tài khoản không tồn tại.');
        }

        // Tuyệt đối không cho phép xóa tài khoản SUPER_ADMIN
        if ($target['role'] === 'SUPER_ADMIN') {
            throw new Exception('Tài khoản Quản Trị Viên (SUPER_ADMIN) được bảo vệ, không thể xóa.');
        }

        $del = $this->db->prepare("DELETE FROM users WHERE id = :id");
        return $del->execute([':id' => $id]);
    }

    public function getById(int $id): ?array {
        $stmt = $this->db->prepare("
            SELECT u.id, u.google_id, u.username, u.email, u.name, u.avatar, u.role, u.branch_id, 
                   b.name as branch_name, u.status, u.last_login, u.created_at 
            FROM users u
            LEFT JOIN branches b ON u.branch_id = b.id
            WHERE u.id = :id 
            LIMIT 1
        ");
        $stmt->execute([':id' => $id]);
        $res = $stmt->fetch();
        return $res ?: null;
    }

    public function getAll(): array {
        $stmt = $this->db->query("
            SELECT u.id, u.google_id, u.username, u.email, u.name, u.avatar, u.role, u.branch_id, 
                   b.name as branch_name, u.status, u.last_login, u.created_at 
            FROM users u
            LEFT JOIN branches b ON u.branch_id = b.id
            ORDER BY u.id DESC
        ");
        return $stmt->fetchAll();
    }
}
