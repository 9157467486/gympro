@echo off
cd /d "%~dp0"
title GymPro K40 Pro Gym Management System
color 0A
echo.
echo  ============================================
echo   GymPro Ultimate - ZKTeco K40 Pro Build
echo  ============================================
echo.

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8190" ^| findstr "LISTENING"') do taskkill /f /pid %%a >nul 2>&1

python --version >nul 2>&1
if %errorlevel%==0 (
    echo  Python found. Opening GymPro...
    echo  K40 Pro workflow: enroll on device, sync logs in GymPro.
    echo.
    echo  DO NOT CLOSE THIS WINDOW while using GymPro.
    echo.
    start "" "http://localhost:8190/GymPro_Daily.html?local=1&v=k40-pro"
    python gympro_server.py
) else (
    echo  Python NOT found on this PC.
    echo.
    echo  Please install Python first:
    echo  1. Go to https://python.org
    echo  2. Download Python 3.x
    echo  3. During install CHECK "Add Python to PATH"
    echo  4. Restart PC
    echo  5. Run this START.bat again
    echo.
    pause
)
