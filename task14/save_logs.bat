@echo off
setlocal

:: Get current date and time
for /f "tokens=1-5 delims=/:. " %%a in ("%date% %time%") do (
    set yyyy=%%c
    set mm=%%a
    set dd=%%b
    set hh=%%d
    set min=%%e
)

:: Create a timestamped filename
set filename=logcat_%yyyy%-%mm%-%dd%_%hh%-%min%.txt

:: Run ADB logcat and save to file
adb logcat -d > %filename%

echo Logs saved to %filename%
pause
