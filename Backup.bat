@echo off

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set DATE=%%i


set "BACKUP_FOLDER=C:\Users\thear\OneDrive\Desktop\PhoneBackup_%DATE%"


mkdir "%BACKUP_FOLDER%"

echo Starting Android phone backup...
echo.


echo Backing up Camera photos...
adb pull /sdcard/DCIM/Camera "%BACKUP_FOLDER%\Camera"
echo.


echo Backing up Downloads folder...
adb pull /sdcard/Download "%BACKUP_FOLDER%\Download"
echo.


echo Backing up Pictures folder...
adb pull /sdcard/Pictures "%BACKUP_FOLDER%\Pictures"
echo.

echo Backing up WhatsApp Media (Scoped Storage)...
adb pull /sdcard/Android/media/com.whatsapp/WhatsApp/Media "%BACKUP_FOLDER%\WhatsApp_Media"
echo.

echo Backup completed!
echo Files saved to: "%BACKUP_FOLDER%"
pause
