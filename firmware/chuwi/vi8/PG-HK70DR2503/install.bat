@echo off

@rem 
@echo.
@echo Start install SileadTouchDriver...

if EXIST c:\Windows\System32\Drivers\SileadTouch.fw Del /q c:\Windows\System32\Drivers\SileadTouch.fw
cd /d %~dp0
if NOT EXIST SileadTouch.fw Goto ERROR

:InstallDrivers
@echo Copy SileadTouch.fw and install the Drivers
copy SileadTouch.fw c:\Windows\System32\Drivers && devcon.exe rescan && devcon.exe update "Drivers\SileadTouch.inf" "ACPI\MSSL1680" && devcon.exe rescan && goto install_ok
if %errorlevel% NEQ 0 echo "Install SileadTouch Drivers Failed " && goto :error

:ERROR
PAUSE

:END

