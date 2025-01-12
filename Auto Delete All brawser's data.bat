@echo off
echo Deleting browser history and autofill data...

:: For Google Chrome
echo Clearing Google Chrome data...
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default" (
    del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History" 2>nul
    del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies" 2>nul
    del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Web Data" 2>nul
    del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Login Data" 2>nul
)

:: For Microsoft Edge
echo Clearing Microsoft Edge data...
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default" (
    del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\History" 2>nul
    del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cookies" 2>nul
    del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Web Data" 2>nul
    del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Login Data" 2>nul
)

:: For Mozilla Firefox
echo Clearing Mozilla Firefox data...
if exist "%APPDATA%\Mozilla\Firefox\Profiles" (
    for /d %%d in ("%APPDATA%\Mozilla\Firefox\Profiles\*") do (
        del /q /s "%%d\cookies.sqlite" 2>nul
        del /q /s "%%d\formhistory.sqlite" 2>nul
        del /q /s "%%d\places.sqlite" 2>nul
    )
)

echo Browsing data cleared!
pause
