@echo off
REM =========================================
REM Interactive Chatbot Launcher (.bat)
REM =========================================

REM Get/switch to the directory of chat-bot script automatically
SET "PROJECT_DIR=%~dp0"
cd /d "%PROJECT_DIR%"

REM Activate virtual environment if it exists
IF EXIST "venv\Scripts\activate" (
    call venv\Scripts\activate
) ELSE (
    echo Virtual environment not found. Please set it up first.
    pause
    exit /b
)

REM Prompt user for bot choice
echo Available bots:
echo   1. einstein
echo   2. ronaldo
echo   3. hamilton
set /p BOT="Enter bot name (einstein/ronaldo/hamilton): "

REM Validate input
IF NOT "%BOT%"=="einstein" IF NOT "%BOT%"=="ronaldo" IF NOT "%BOT%"=="hamilton" (
    echo Invalid bot name. Exiting.
    pause
    exit /b
)

REM Prompt for user name
set /p USERNAME="Enter your name: "

REM Run the chatbot
python main.py --bot %BOT% --user %USERNAME%

echo.
echo  Chat session finished. Press any key to exit.
pause
