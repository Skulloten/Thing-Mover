::when opening file to run,
::right click batch file and  "run as administrator" to grant admin privileges
@echo off
:: Check for permissions
echo Requesting Admin Permissions...
net session >nul 2>&1
::privilege elevation 
if %errorlevel%==0 (
    echo Permission has been granted! LETS FUCKING GO!!!!!

REM Payload 
   
   robocopy "F:\\" "E:\\"  /E /ETA /xj /r:0 /w:0 

    pause
) else (
    echo Permissions denied! TRY AGAIN IDIOT!
    pause
)

