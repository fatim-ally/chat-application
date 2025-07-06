@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

echo ================================
echo Step 4: MVP Commit and Push to GitHub
echo ================================

rem Check if Git is installed
git --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Git is not installed or not working properly.
    pause
    exit /b
)

rem Check if inside a Git repository
IF NOT EXIST ".git" (
    echo This folder is not a Git repository.
    echo Please run git init and link to GitHub repo first.
    pause
    exit /b
)

rem Confirm GitHub remote
git remote get-url origin >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Git remote 'origin' not found.
    echo Adding origin as 'https://github.com/humeraaa/chat-application.git'
    git remote add origin https://github.com/humeraaa/chat-application.git
) ELSE (
    echo Git remote 'origin' is already set.
)

rem Set Git user identity (optional)
git config --global user.name "humeraaa"
git config --global user.email "humera@uok.edu.pk"

rem Generate commit message with timestamp
for /f %%A in ('powershell -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%A
set "msg=MVP Commit - %datetime%"

rem Add all changes
git add .

rem Commit
git commit -m "%msg%"

rem Push to GitHub
git push origin main

echo.
echo Step 4 complete: Commit and push successful (if no errors above).
pause
