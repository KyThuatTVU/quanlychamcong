<?php
/**
 * CẤU HÌNH KẾT NỐI CƠ SỞ DỮ LIỆU MYSQL / MARIADB (PDO)
 * Tương thích tốt với XAMPP localhost và tất cả các Web Hosting miễn phí (InfinityFree, 000webhost, v.v.)
 */

define('DB_HOST', getenv('DB_HOST') ?: 'localhost');
define('DB_NAME', getenv('DB_NAME') ?: 'happykids_hrm');
define('DB_USER', getenv('DB_USER') ?: 'root');
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

            // Tự động thử mật khẩu được cấu hình hoặc mật khẩu rỗng (chuẩn XAMPP)
            $passwords = [];
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
                throw $lastEx;
            }
        }
        return self::$instance;
    }
}
