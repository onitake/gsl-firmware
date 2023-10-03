@echo off
start /D %~dp0 /high /wait pnputil -i -a %~dp0SileadTouch.inf
