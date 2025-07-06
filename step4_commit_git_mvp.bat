@echo off
SETLOCAL

echo ===============================
echo Step 4: MVP Commit and Push to GitHub
echo ===============================

rem Confirm user wants to proceed
set /p confirm=Do you want to commit and push your MVP version to GitHub? (y/n): 
IF /I "%confirm%" NEQ "y" (
    echo Aborted.
    pause
    exit /b
)

rem Step 1: Check for Git repository
IF NOT EXIST ".git" (
    echo This folder is not a Git repository. Please run git init first.
    pause
    exit /b
)

rem Step 2: Check for Git remote 'origin'
git remote get-url origin >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Git remote 'origin' not found. Please run 'git remote add origin <your-url>'.
    pause
    exit /b
)

rem Step 3: Add all files
echo Adding all files...
git add .

rem Step 4: Create timestamped commit message
for /f %%A in ('powershell -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%A
set "msg=MVP Commit - %datetime%"

rem Step 5: Commit
echo Committing with message: %msg%
git commit -m "%msg%"

rem Step 6: Push to GitHub
echo Pushing to GitHub...
git push origin main

echo.
echo ✅ MVP commit and push completed successfully.
pause
