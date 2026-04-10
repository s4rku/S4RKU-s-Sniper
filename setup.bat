@echo off
title S4RKU's Sniper - Setup
color 0A

echo.
echo    ========================================
echo       S4RKU's Sniper - Setup Script
echo    ========================================
echo.

echo [1/3] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo Please install Node.js v20.18 or higher from: https://nodejs.org/
    echo.
    pause
    exit /b 1
)
echo ✓ Node.js is installed

echo.
echo [2/3] Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies!
    echo.
    pause
    exit /b 1
)
echo ✓ Dependencies installed successfully

echo.
echo [3/3] Setting up configuration file...
if exist config.json (
    echo Configuration file already exists.
    echo If you want to reset it, delete config.json and run this script again.
) else (
    copy config.example.json config.json >nul
    echo ✓ Configuration file created from template
    echo.
    echo IMPORTANT: Please edit config.json with your credentials before running the sniper!
)

echo.
echo    ========================================
echo       Setup Complete!
echo    ========================================
echo.
echo Next steps:
echo   1. Edit config.json with your Discord credentials
echo   2. Run: npm start
echo   3. Use .help command in Discord for commands list
echo.
echo For more information, see README.md
echo.
pause
