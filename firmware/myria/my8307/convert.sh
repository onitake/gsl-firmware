#!/bin/bash

# extract firmware from the Windows driver
../../../tools/scanwindrv SileadTouch.sys

# rename the result
mv firmware_00.fw firmware.fw

# create copy for silead driver
cp firmware.fw gsl1680-myria-my8307.fw

# align with normal (xrandr, sensor) orientation
../../../tools/fwtool -c firmware.fw -m 1680 -h 1720 -w 1140 -f track,xflip,yflip,swap -t 10 silead_ts.fw

## when used with gslx680_ts_acpi module:
#sudo rmmod gslx680_ts_acpi
#sudo cp silead_ts.fw /lib/firmware/
#sudo modprobe gslx680_ts_acpi

