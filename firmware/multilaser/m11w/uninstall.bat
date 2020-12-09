@echo off
REM * Copyright 2015 SileadTouch  Corporation
REM Version  1.1
REM *****Modified by  dave, 2015-4-25***************************

setlocal
echo off

"%~dp0devcon.exe" rescan > nul || (
    goto MUST_BE_ADMIN
)

echo -------------------Uninstalling TP Location Driver-------------------
rem echo Last chance to copy your valuable log files and test data!!!



echo Removing "ACPI\VEN_MSSL&DEV_1680*"
"%~dp0devcon.exe" remove "ACPI\VEN_MSSL&DEV_1680*" || goto REMOVAL_ERROR
goto REMOVE_BUS_INF


:REMOVE_BUS_INF
set inf=
set cat="SileadTouch.cat"
for %%f in (%SystemRoot%\inf\oem*.inf) do (
	type %%f | find %cat% && "%~dp0devcon.exe" dp_delete %%f -f
rem || echo  %errorlevel% %%f 
)

:REMOVE_FILES
echo Removing Location TP Driver Files
set Files=
for %%f in (%files%) do (
    if exist %SystemRoot%\System32\Drivers\UMDF\%%f (
		takeown /F %SystemRoot%\System32\Drivers\UMDF\%%f > nul
		icacls %SystemRoot%\System32\Drivers\UMDF\%%f /grant %USERNAME%:f > nul
		del /F /Q /S %SystemRoot%\System32\Drivers\UMDF\%%f > nul
    )
	if exist %SystemRoot%\System32\%%f (
		takeown /F %SystemRoot%\System32\%%f > nul
		icacls %SystemRoot%\System32\%%f /grant %USERNAME%:f > nul
		del /F /Q /S %SystemRoot%\System32\%%f > nul
    )
	
)

del /F /Q /S %SystemRoot%\System32\Drivers\SileadTouch.fw 2> nul

REM reg import "%~dp0uninstall.reg"

echo Removing Bus Driver Files
if exist %SystemRoot%\System32\Drivers\SileadTouch.sys (
	takeown /F %SystemRoot%\System32\Drivers\SileadTouch.sys > nul
	icacls %SystemRoot%\System32\Drivers\SileadTouch.sys /grant %USERNAME%:f > nul
	del /F /Q %SystemRoot%\System32\Drivers\SileadTouch.sys > nul
)


goto FINISH



:REMOVAL_ERROR
echo Driver not removed
goto FINISH

:MUST_BE_ADMIN
echo Must run as Administrator
pause

:FINISH
if exist "%~dp0inf.txt" del /F /Q "%~dp0inf.txt"
echo ------------------- Silead  TP Driver Uninstalled--------------------
endlocal