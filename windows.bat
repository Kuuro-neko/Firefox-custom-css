@echo off

for /d %%i in ("%APPDATA%\Mozilla\Firefox\Profiles\*.default-release") do (
    set "PROFILE=%%i"
    goto :found
)

echo Error: No default-release profile found
exit /b 1

:found
rmdir "%PROFILE%\chrome" 2>nul
del "%PROFILE%\chrome" 2>nul

mklink /D "%PROFILE%\chrome" "%~dp0chrome"