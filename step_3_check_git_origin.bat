
@echo off
SETLOCAL

echo Checking for Git remote 'origin'...
git remote get-url origin >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
    echo Remote 'origin' not found. Adding now...
    git remote add origin https://github.com/humeraaa/chatbot-oop.git
    echo ✅ Remote 'origin' added.
) ELSE (
    echo ✅ Remote 'origin' already exists.
)

git remote -v
pause
