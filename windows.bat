@echo off

for /d %%i in ("%APPDATA%\Mozilla\Firefox\Profiles\*.default-release") do (
    set "PROFILE=%%i"
    goto :found
)

echo Error: No default-release profile found
exit /b 1

:found
mkdir "%PROFILE%\chrome\" 2>nul

rmdir /s /q "%PROFILE%\chrome" 2>nul

xcopy "chrome\" "%PROFILE%\chrome\" /E /I /Y