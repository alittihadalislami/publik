@echo off

:: Bagian pertama: Mengunduh file ke folder Startup
set "filePath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\AKGTK.seb"
if exist "%filePath%" (del "%filePath%")
curl -L -o "%filePath%" "https://drive.google.com/uc?id=1oqp9ubo5ZYPOfTqHEvQBLQZHrNW40t2_"

:: Memeriksa apakah unduhan berhasil sebelum melanjutkan
if exist "%filePath%" (
    :: Bagian kedua: Menyalin file ke Desktop
    set "filePath2=%USERPROFILE%\Desktop\AKGTK.seb"
    if exist "%filePath2%" (del "%filePath2%")
    copy "%filePath%" "%filePath2%"
) else (
    echo Unduhan gagal, file tidak ditemukan.
)