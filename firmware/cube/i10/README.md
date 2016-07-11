cube/i10
--------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Cube |
| Device                    | i10 |
| Website                   | http://www.cube-tablet.com/cube-i10-10-6-inch-dual-boot-tablet.html |
| Vendor driver (Windows)   | http://techtablets.com/download/cube/i10/Windows%208.1%20Drivers/i10%20Windows%208.1%20drivers%20and%20touchscreen%20config%20files.zip or https://drive.google.com/open?id=0B3eEskvA0DSXZ0RZRVJnR2t1RE0 (drivers for Windows 8.1) http://pan.baidu.com/s/1pKabwdP (system image for i10-R) http://pan.baidu.com/s/1kT8gooJ (system image for i10-BW) http://pan.baidu.com/s/1eQz3bN0 (system image for i10-W) http://pan.baidu.com/s/1kT5yzbT (system image for i10-W) |
| Extracted firmware        | [Touch screen calibration files Touch/SileadTouch.fw](Touch screen calibration files Touch/SileadTouch.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1366x768 |
| Touch panel resolution    | 1366x768 (unverified) |
| Touch controller          | ? |
| Multitouch support        | Yes (10) (unverified) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | ./fwtool -c SileadTouch.fw -3 -m 1680 -w 1366 -h 768 -t 10 silead_ts.fw |
