@echo off
cd /d %~dp0

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel%==0 (
    echo Admin privileges detected.
    goto :continue
) else (
    echo Requesting admin privileges...
    goto UACPrompt
)

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /b

:continue
@color 2
echo hl.exe Process termination in process!!
taskkill /f /im hl.exe
if %errorlevel%==128 (
	@cls
    echo Unable to terminate the process!!!!
    goto :giveAdminOrERROR
) else (
	@cls
    echo Process Terminated Successfully!
    echo ..................................
    echo Created by Domination/Vishwajit...
	pause
    goto :end
)

:giveAdminOrERROR
color c
echo Check whether hl.exe is running
echo or relaunch the .bat file
pause

:end
