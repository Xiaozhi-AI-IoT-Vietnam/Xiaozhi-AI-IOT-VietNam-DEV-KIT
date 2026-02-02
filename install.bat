@echo off
chcp 65001 >nul
REM ============================================
REM ESP32 Firmware Dev Kit - Installer
REM For Windows
REM ============================================

cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║                                                   ║
echo ║   ESP32 Firmware Dev Kit Installer                ║
echo ║                                                   ║
echo ║   Compatible with:                                ║
echo ║   Antigravity, GitHub Copilot, Cursor             ║
echo ║   Windsurf, Cline, VSCode                         ║
echo ║                                                   ║
echo ╚═══════════════════════════════════════════════════╝
echo.

REM Get script directory
set "SCRIPT_DIR=%~dp0"

REM Get target directory
if "%1"=="" (
    echo Usage: install.bat C:\path\to\your\esp32-project
    echo.
    set /p TARGET_DIR="Enter target directory (or press Enter for current): "
    if "%TARGET_DIR%"=="" set "TARGET_DIR=%CD%"
) else (
    set "TARGET_DIR=%~1"
)

echo.
echo [INFO] Target: %TARGET_DIR%
echo.

REM Check if directory exists
if not exist "%TARGET_DIR%" (
    echo [ERROR] Directory does not exist: %TARGET_DIR%
    pause
    exit /b 1
)

REM Check if ESP32 project
set IS_ESP32=0
if exist "%TARGET_DIR%\CMakeLists.txt" set IS_ESP32=1
if exist "%TARGET_DIR%\sdkconfig" set IS_ESP32=1
if exist "%TARGET_DIR%\main" set IS_ESP32=1

if %IS_ESP32%==1 (
    echo [OK] ESP32/ESP-IDF project detected
) else (
    echo [WARN] This doesn't look like an ESP32 project
    set /p CONTINUE="Continue anyway? [y/N]: "
    if /i not "%CONTINUE%"=="y" (
        echo Installation cancelled.
        pause
        exit /b 1
    )
)

echo.
echo [INFO] Installing ESP32 Dev Kit...
echo.

REM Backup existing .agent
if exist "%TARGET_DIR%\.agent" (
    set "BACKUP_NAME=.agent.backup.%DATE:~-4%%DATE:~-10,2%%DATE:~-7,2%_%TIME:~0,2%%TIME:~3,2%"
    echo [INFO] Backing up existing .agent...
    move "%TARGET_DIR%\.agent" "%TARGET_DIR%\%BACKUP_NAME%" >nul 2>&1
)

REM Install components
echo [INSTALL] .agent folder...
xcopy /E /I /Y /Q "%SCRIPT_DIR%.agent" "%TARGET_DIR%\.agent" >nul 2>&1

echo [INSTALL] GEMINI.md...
copy /Y "%SCRIPT_DIR%GEMINI.md" "%TARGET_DIR%\" >nul 2>&1

echo [INSTALL] Copilot config...
if not exist "%TARGET_DIR%\.github" mkdir "%TARGET_DIR%\.github"
copy /Y "%SCRIPT_DIR%.github\copilot-instructions.md" "%TARGET_DIR%\.github\" >nul 2>&1

echo [INSTALL] Cursor rules...
copy /Y "%SCRIPT_DIR%.cursorrules" "%TARGET_DIR%\" >nul 2>&1

echo [INSTALL] Windsurf rules...
copy /Y "%SCRIPT_DIR%.windsurfrules" "%TARGET_DIR%\" >nul 2>&1

echo [INSTALL] Cline rules...
copy /Y "%SCRIPT_DIR%.clinerules" "%TARGET_DIR%\" >nul 2>&1

echo [INSTALL] VSCode config...
if not exist "%TARGET_DIR%\.vscode" mkdir "%TARGET_DIR%\.vscode"
xcopy /E /Y /Q "%SCRIPT_DIR%.vscode" "%TARGET_DIR%\.vscode\" >nul 2>&1

echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║         Installation Complete!                    ║
echo ╚═══════════════════════════════════════════════════╝
echo.
echo What's installed:
echo    - 5 ESP32 skills (firmware, audio, display, mqtt, patterns)
echo    - 7 workflows (/plan, /code, /test, /fix, /review, /design, /git)
echo    - 4 coding rules
echo    - 6 specialized agents
echo    - 16 VSCode snippets
echo    - Build/Flash tasks
echo.
echo AI Tools configured:
echo    - Antigravity (GEMINI.md)
echo    - GitHub Copilot (.github\copilot-instructions.md)
echo    - Cursor (.cursorrules)
echo    - Windsurf (.windsurfrules)
echo    - Cline (.clinerules)
echo.
echo Quick Start:
echo    /plan    - Plan new feature
echo    /code    - Implement code
echo    /test    - Build and flash
echo    /fix     - Debug issues
echo    /review  - Code review
echo.
echo Documentation: .agent\README.md
echo.
pause
