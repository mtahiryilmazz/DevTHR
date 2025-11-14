@echo off
echo Yazdirma Biriktiricisi hizmeti durduruluyor...
net stop spooler
echo.
echo Gecici yazdirma dosyalari temizleniyor...
del /Q /F /S "%systemroot%\System32\spool\PRINTERS\*.*"
echo.
echo Yazdirma Biriktiricisi hizmeti baslatiliyor...
net start spooler
echo.
echo Islem tamamlandi.
pause
