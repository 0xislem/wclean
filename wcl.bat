��&cls
@echo off
title Valorant Cleaner
color 0A
cls

echo =============================================
echo      Valorant, Riot Games & Vanguard Cleaner
echo =============================================
echo.
echo Press ENTER to start cleaning logs and temp...
pause >nul

:: ---------------- Batch Cleanup Function ----------------
echo Cleaning Valorant, Riot Games & Vanguard temporary files...
:: VALORANT Logs
if exist "%USERPROFILE%\AppData\Local\VALORANT\Logs" rd /s /q "%USERPROFILE%\AppData\Local\VALORANT\Logs"
if exist "%USERPROFILE%\AppData\Local\VALORANT\Saved\Logs" rd /s /q "%USERPROFILE%\AppData\Local\VALORANT\Saved\Logs"

:: Riot Games Logs
if exist "%USERPROFILE%\AppData\Local\Riot Games\Logs" rd /s /q "%USERPROFILE%\AppData\Local\Riot Games\Logs"
if exist "%PROGRAMDATA%\Riot Games\Logs" rd /s /q "%PROGRAMDATA%\Riot Games\Logs"

:: Vanguard Logs & Temp
if exist "%ProgramData%\Riot Vanguard\Logs" rd /s /q "%ProgramData%\Riot Vanguard\Logs"
if exist "%ProgramData%\Riot Vanguard\Temp" rd /s /q "%ProgramData%\Riot Vanguard\Temp"

:: Windows Temp (careful)
rd /s /q "%TEMP%" >nul 2>&1
md "%TEMP%" >nul 2>&1

echo.
echo Cleanup complete!
echo by 0xqa
pause
exit /b
