@echo off
SETLOCAL

echo ================================
echo Step 4: MVP Commit and Push to GitHub
echo ================================

:: Step 1: Check if Git is installed
git --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Git is not installed or not in PATH.
    pause
    exit /b
)

:: Step 2: Confirm this is a Git repository
IF NOT EXIST ".git" (
    echo This folder is not a Git repository.
    echo Run git init and add a remote first.
    pause
    exit /b
)

:: Step 3: Check Git remote
git remote get-url origin >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Remote 'origin' not found. Adding it now...
    git remote add origin https://github.com/humeraaa/chat-application.git
) ELSE (
    echo Remote 'origin' is set correctly.
)

:: Step 4: Check for uncommitted changes
git diff-index --quiet HEAD --
IF %ERRORLEVEL% EQU 0 (
    echo Nothing to commit. Working tree is clean.
    pause
    exit /b
)

:: Step 5: Set Git identity (optional)
git config --global user.name "humeraaa"
git config --global user.email "humera@uok.edu.pk"

:: Step 6: Commit with timestamp
for /f %%A in ('powershell -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%A
set "msg=MVP Commit - %datetime%"
echo Committing with message: %msg%
git add .
git commit -m "%msg%"

:: Step 7: Push and fix if rejected
echo Pushing to GitHub...
git push origin main
IF %ERRORLEVEL% NEQ 0 (
    echo Push failed. Attempting to pull remote changes and retry...
    git pull origin main --allow-unrelated-histories
    git push origin main
)

echo.
echo Step 4 complete: Commit and push process finished.
pause
