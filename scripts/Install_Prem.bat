@echo off

:: Line for changing spotx parameters, each parameter should be separated by a space
set param=-premium -new_theme

:: [SECURITY FIX] Removed remote download (iwr | iex).
:: Now calls the local run.ps1 directly — no code is fetched from the internet.
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe ^
-ExecutionPolicy Bypass -File "%~dp0..\run.ps1" %param%

pause
exit /b