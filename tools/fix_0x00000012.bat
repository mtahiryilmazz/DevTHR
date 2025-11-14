@echo off
title Sanal Bellek Ayarlama Araci (0x00000012 Hatasi Cozumu)

:: Yonetici olarak calistirilip calistirilmadigini kontrol et
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Bu betigi calistirmak icin Yonetici yetkilerine ihtiyaciniz var.
    echo Lutfen dosyaya sag tiklayip "Yonetici olarak calistir" secenegini secin.
    pause
    exit
)

echo =================================================================
echo Bu arac, 0x00000012 hatasina neden olabilen dusuk bellek
echo sorunlarini cozmek icin sanal bellek (paging file) ayarlarini
echo guncelleyecektir.
echo.
echo Ayarlar: Baslangic Boyutu=4096 MB, Maksimum Boyut=8192 MB
echo =================================================================
echo.
pause

echo Otomatik sanal bellek yonetimi devre disi birakiliyor...
wmic computersystem set AutomaticManagedPagefile=false

echo Sanal bellek boyutu ayarlaniyor...
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=4096, MaximumSize=8192

echo.
echo =================================================================
echo Islem tamamlandi.
echo.
echo ONEMLI: Degisikliklerin gecerli olmasi icin bilgisayarinizi
echo YENIDEN BASLATMANIZ gerekmektedir.
echo =================================================================
echo.
pause
