#!/bin/bash

# NOTE: this is a 2-in-1 laptop (detachable keyboard)
# The following script can be used with 'monitor-sensor' in order to
# automatically rotate the tablet *and* calibrate both touchscreen and
# touchpad input (if keyboard is connected)


TOUCHPAD="SIPODEV USB Composite Device Mouse"
TOUCHSCREEN="Silead GSLx680 Touchscreen"

stdbuf -oL monitor-sensor |
	while IFS= read -r line; do
		if [ -z "${line##*right*}" ]; then
			xrandr -o left --dpi 96
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
		fi
		if [ -z "${line##*normal*}" ]; then
			xrandr -o normal --dpi 96
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
		fi
		if [ -z "${line##*left*}" ]; then
			xrandr -o right --dpi 96
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
		fi
		if [ -z "${line##*bottom*}" ]; then
			xrandr -o inverted --dpi 96
			xinput set-prop "$TOUCHPAD"     --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
			xinput set-prop "$TOUCHSCREEN"  --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
		fi
	done

