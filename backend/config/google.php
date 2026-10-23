<?php
/**
 * CẤU HÌNH ĐĂNG NHẬP BẰNG GOOGLE (GOOGLE OAUTH2 / GOOGLE IDENTITY SERVICES)
 */

define('GOOGLE_CLIENT_ID', getenv('GOOGLE_CLIENT_ID') ?: '331656917201-8kfe6id1fiecvq68pm9n6oi2f92a0jeo.apps.googleusercontent.com');
define('GOOGLE_CLIENT_SECRET', getenv('GOOGLE_CLIENT_SECRET') ?: '');

// Danh sách email quản trị viên mặc định (được cấp toàn quyền SUPER_ADMIN)
$DEFAULT_ADMIN_EMAILS = [
    'nguyenhuynhkithuat84tv@gmail.com',
    'admin@happykids.edu.vn',
    'kythuat@happykids.edu.vn'
];
