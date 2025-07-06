@echo off
SETLOCAL

echo =====================================
echo STEP 2: Check if Git Repo is Initialized
echo =====================================

rem Check if .git folder exists
IF NOT EXIST ".git" (
    echo  This folder is NOT a Git repository.
    echo Please run: git init
    pause
    exit /b
) ELSE (
    echo  This folder is a Git repository.
)

pause
