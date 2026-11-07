@echo off
chcp 65001 >nul
echo ========================================================
echo   HAPPYKIDS HRM - DUMP CSDL RA FILE SQL DEPLOY LEN HOST
echo ========================================================
echo.

set MYSQL_DUMP="d:\xampp\mysql\bin\mysqldump.exe"
set DB_NAME=happykids_hrm
set OUT_FILE="d:\xampp\htdocs\HappyKids_HRM\database_deploy.sql"
set BACKEND_FILE="d:\xampp\htdocs\HappyKids_HRM\backend\database.sql"

if not exist %MYSQL_DUMP% (
    echo [LOI] Khong tim thay file mysqldump.exe tai d:\xampp\mysql\bin\
    pause
    exit /b
)

echo Dang xuat CSDL chuan UTF-8 khong loi...
%MYSQL_DUMP% -u root --default-character-set=utf8mb4 --result-file=%OUT_FILE% %DB_NAME%
copy /Y %OUT_FILE% %BACKEND_FILE% >nul

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo  [THANH CONG] Da xuat CSDL chuan UTF-8 (khong bi loi 457)
    echo    1. database_deploy.sql (Thu muc goc)
    echo    2. backend\database.sql
    echo ========================================================
    echo.
    echo Gio ban co the Import file database_deploy.sql len phpMyAdmin Byethost ngon lanh!
) else (
    echo.
    echo [LOI] Khong the xuat CSDL, vui long kiem tra MySQL da bat chua!
)

echo.
pause
