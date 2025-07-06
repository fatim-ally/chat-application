@echo off
SETLOCAL

echo ===================================
echo STEP 1: Basic Git Environment Check
echo ===================================

rem Show current directory
echo Current directory:
cd
echo.

rem Check if Git is installed
git --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo  Git is not installed or not added to PATH.
    pause
    exit /b
) ELSE (
    echo  Git is installed.
)

pause
