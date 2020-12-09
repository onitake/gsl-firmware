@echo off
REM * Copyright 2015 SileadTouch  Corporation
REM Version  1.1
REM *****Modified by  dave, 2015-4-25***************************

setlocal
@echo off

call "%~dp0uninstall.bat"

"%~dp0devcon.exe" rescan > nul || (
    goto MUST_BE_ADMIN
)

copy /Y "%~dp0touch\SileadTouch.fw" %SystemRoot%\System32\Drivers
pnputil -i -a "%~dp0touch\SileadTouchDriver\SileadTouch.inf" || goto ERROR


"%~dp0devcon.exe" rescan > nul
"%~dp0devcon.exe" rescan > nul
"%~dp0devcon.exe" rescan > nul
"%~dp0devcon.exe"  disable  "ACPI\VEN_MSSL&DEV_1680*"
"%~dp0devcon.exe" rescan > nul
"%~dp0devcon.exe"  enable  "ACPI\VEN_MSSL&DEV_1680*"
"%~dp0devcon.exe" rescan > nul
rem echo.
rem echo Updating "ACPI\VEN_MSSL&DEV_1680*"
rem "%~dp0devcon.exe" update "%~dp0touch\SileadTouchDriver\SileadTouch.inf"  "ACPI\VEN_MSSL&DEV_1680*" || goto ERROR
    
goto FINISH


:MUST_BE_ADMIN
echo Must run as Administrator
rem echo Ensure the computer is boot with "Disable Driver Signature Enforcement"
goto FINISH

:ERROR
echo -----------------------------------ERROR-----------------------------------
echo -----------------------------------ERROR-----------------------------------

:FINISH
echo --------------------- Silead  TP Driver Install FINISH --------------------
pause
endlocal
