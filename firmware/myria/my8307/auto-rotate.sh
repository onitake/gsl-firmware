#!/bin/bash

# NOTE: this is a 2-in-1 laptop (detachable keyboard)
# The following script can be used with 'monitor-sensor' in order to
# automatically rotate the tablet *and* calibrate both touchscreen and
# touchpad input (if keyboard is connected)

TOUCHPAD="SIPODEV USB Composite Device Mouse"

# with gslx680_ts_acpi driver:
#TOUCHSCREEN="Silead GSLx680 Touchscreen"
# with silead_ts driver:
TOUCHSCREEN="pointer:silead_ts"

stdbuf -oL monitor-sensor |
	while IFS= read -r line; do
		if [ -z "${line##*right*}" ]; then
			xrandr -o left
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
		fi
		if [ -z "${line##*normal*}" ]; then
			xrandr -o normal
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
		fi
		if [ -z "${line##*left*}" ]; then
			xrandr -o right
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
		fi
		if [ -z "${line##*bottom*}" ]; then
			xrandr -o inverted
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
		fi
		xrandr --dpi 96
	done

