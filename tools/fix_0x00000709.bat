@echo off
echo Windows NT\CurrentVersion\Windows anahtari icin izinler ayarlanacak...
echo HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows [1 5 7 17] > "%temp%\permissions.txt"
regini "%temp%\permissions.txt"
del "%temp%\permissions.txt"
echo Izinler basariyla ayarlandi.
pause
