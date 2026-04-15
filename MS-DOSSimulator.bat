@echo off
title MS-DOS SIMULATOR

cls
echo Starting MS-DOS...
timeout /t 1 >nul
echo Loading system files...
timeout /t 1 >nul
echo Done.
timeout /t 1 >nul

:main
cls
echo ============================
echo      MS-DOS SIMULATOR
echo ============================
echo Type HELP for commands
echo.

set /p cmd=C:\%USERNAME%^>

if "%cmd%"=="help" goto help
if "%cmd%"=="dir" goto dir
if "%cmd%"=="cls" goto main
if "%cmd%"=="ver" goto ver
if "%cmd%"=="time" goto time
if "%cmd%"=="date" goto date
if "%cmd%"=="exit" exit

echo Bad command or file name
pause
goto main

:help
cls
echo Available commands:
echo DIR   - list files
echo CLS   - clear screen
echo VER   - show version
echo TIME  - show time
echo DATE  - show date
echo EXIT  - exit program
pause
goto main

:dir
cls
echo Volume in drive C has no label
echo Directory of C:\
echo.
echo AUTOEXEC BAT
echo CONFIG   SYS
echo COMMAND  COM
echo DOS      SYS
echo GAMES    EXE
echo README   TXT
echo.
pause
goto main

:ver
cls
echo MS-DOS Simulator Version 1.0, Made by WintelPCs, Written from ChatGPT
pause
goto main

:time
cls
echo Current time: %time%
pause
goto main

:date
cls
echo Current date: %date%
pause
goto main