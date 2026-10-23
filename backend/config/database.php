<?php
/**
 * CẤU HÌNH KẾT NỐI CƠ SỞ DỮ LIỆU MYSQL / MARIADB (PDO)
 * Tự động nhận diện môi trường: Byethost Hosting hoặc XAMPP Localhost
 */

// Kiểm tra xem website đang chạy trên hosting Byethost hay Localhost
$hostName = $_SERVER['HTTP_HOST'] ?? ($_SERVER['SERVER_NAME'] ?? '');
$isByethost = (
    strpos($hostName, 'byethost') !== false ||
    strpos($hostName, 'quanlychamcong') !== false ||
    getenv('BYETHOST_ENV') === 'true'
);

if ($isByethost) {
    // ==========================================
    // 1. CẤU HÌNH TRÊN HOSTING BYETHOST
    // ==========================================
    define('DB_HOST', 'sql107.byethost13.com');
    define('DB_NAME', 'b13_43251152_happykids_hrm');
    define('DB_USER', 'b13_43251152');
    
    // Mật khẩu đăng nhập vPanel / MySQL trên Byethost
    define('DB_PASS', '123456');
} else {
    // ==========================================
    // 2. CẤU HÌNH CHẠY CỤC BỘ TRÊN XAMPP (LOCALHOST)
    // ==========================================
    define('DB_HOST', getenv('DB_HOST') ?: 'localhost');
    define('DB_NAME', getenv('DB_NAME') ?: 'happykids_hrm');
    define('DB_USER', getenv('DB_USER') ?: 'root');
    define('DB_PASS', getenv('DB_PASS') ?: '');
}

define('DB_CHARSET', 'utf8mb4');

class Database {
    private static ?PDO $instance = null;

    public static function getConnection(): PDO {
        if (self::$instance === null) {
            $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET;
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => false,
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci"
            ];

            $passwords = [];
            if (defined('DB_PASS') && DB_PASS !== '') {
                $passwords[] = DB_PASS;
            }
            if (getenv('DB_PASS') !== false) {
                $passwords[] = getenv('DB_PASS');
            }
            $passwords[] = '';

            $connected = false;
            $lastEx = null;
            foreach (array_unique($passwords) as $pass) {
                try {
                    self::$instance = new PDO($dsn, DB_USER, $pass, $options);
                    $connected = true;
                    break;
                } catch (PDOException $e) {
                    $lastEx = $e;
                }
            }

            if (!$connected && $lastEx) {
                throw new Exception("Lỗi kết nối CSDL (" . DB_HOST . "): " . $lastEx->getMessage());
            }
        }
        return self::$instance;
    }
}
