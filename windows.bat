@echo off
mkdir "%APPDATA%\Mozilla\Firefox\Profiles\chrome\"

rmdir /s /q "%APPDATA%\Mozilla\Firefox\Profiles\chrome\*"

xcopy "chrome\" "%APPDATA%\Mozilla\Firefox\Profiles\chrome\" /E /I /Y