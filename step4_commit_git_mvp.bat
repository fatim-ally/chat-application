@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

echo ================================
echo Step 4: MVP Commit and Push to GitHub
echo ================================

rem Step 1: Check if Git is installed
git --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Git is not installed or not in PATH.
    pause
    exit /b
)

rem Step 2: Confirm we are inside a Git repo
IF NOT EXIST ".git" (
    echo This folder is not a Git repository.
    echo Run git_init first or use git init manually.
    pause
    exit /b
)

rem Step 3: Ensure correct Git remote is set
git remote get-url origin >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Remote 'origin' not found. Adding now...
    git remote add origin https://github.com/humeraaa/chat-application.git
    echo Remote 'origin' added successfully.
) ELSE (
    echo Git remote 'origin' is already set.
)

rem Step 4: Check for changes
git status --porcelain >nul
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to check git status.
    pause
    exit /b
)

git status --porcelain | findstr . >nul
IF %ERRORLEVEL% NEQ 0 (
    echo Nothing to commit. Working tree clean.
    pause
    exit /b
)

rem Step 5: Set Git identity (optional)
git config user.name "humeraaa"
git config user.email "humera@uok.edu.pk"

rem Step 6: Commit and push
echo Adding all files...
git add .

for /f %%A in ('powershell -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%A
set "msg=MVP Commit - %datetime%"
echo Committing with message: %msg%
git commit -m "%msg%"

echo Pushing to GitHub...
git push -u origin main

echo.
echo Step 4 complete: Commit and push complete.
pause
