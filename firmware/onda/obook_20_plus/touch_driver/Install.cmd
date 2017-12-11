@echo off
if EXIST c:\Windows\System32\Drivers\SileadTouch.fw Del /q c:\Windows\System32\Drivers\SileadTouch.fw
cd /d %~dp0
xcopy /y SileadTouch.fw %SystemDrive%\Windows\System32\Drivers && devcon.exe rescan && devcon.exe update "SileadTouch.inf" "ACPI\MSSL1680" && devcon.exe rescan



