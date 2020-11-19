@color 2
@echo off
echo Counter-Strike or hl.exe Process termination in process!!
taskkill /f /im hl.exe
if %errorlevel%==128 (
echo Unable to terminate the process!!!! && goto :giveAdminOrERROOR
) else (
echo Process Terminated Successfully!
echo ..................................
echo Created by Domination/Vishwajit...
)
:giveAdminOrERROOR
color c
echo If unable to terminate, see if hl.exe is running or
echo Try:- Running this .bat with Administrative rights.
pause
