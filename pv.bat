@echo off

if [%1]==[/f] (if [%2]==[] (exit /b) else (set "fiel=%2" && set "o=fiel" && goto v))

:get
curl -kLs stivengiv.github.io/mp4/%1.mp4 -o %temp%\b.mp4
curl -kLOs github.com/Aritz331/stuff/blob/main/ffplay.exe?raw=true
set "fiel=%temp%\b.mp4"

:v
ffplay %fiel% -fs -autoexit

if not "%o%"=="fiel" (del %temp%\b.mp4)
exit /b
