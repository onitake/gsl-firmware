#!/bin/bash

# extract firmware from the Windows driver
../../../tools/scanwindrv SileadTouch.sys

# rename the result
mv firmware_00.fw firmware.fw

# align with touchpad orientation
../../../tools/fwtool -c firmware.fw -m 1680 -w 1720 -h 1140 -f track,yflip -t 10 silead_ts.fw

## when used with gslx680_ts_acpi module:
#sudo rmmod gslx680_ts_acpi
#sudo cp silead_ts.fw /lib/firmware/
#sudo modprobe gslx680_ts_acpi

