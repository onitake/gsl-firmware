Chuwi/Hi10 Pro
--------------------------------------
| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi       |
| Device                    | Hi10 Pro    |
| Website                   | http://en.chuwi.com/product/items/Chuwi-Hi10-Pro.html |
| Vendor driver (Windows)   | http://forum.chuwi.com/thread-2341-1-1.html |
| Extracted firmware        | firmware.fw |
| Firmware for gslx680-acpi | silead_ts.fw |
| Display resolution        | 1920x1200   |
| Touch panel resolution    | 1925x1260   |
| Touch controller          | GSL1680     |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes         |
| Mirrored horizontally     | No          |
| Mirrored vertically       | No          |
| Axes swapped              | No          |
| Comments                  | fwtool -c ./firmware.fw -m 1680 -w 1925 -h 1260 -t 10 -f track silead_ts.fw |
--------------------------------------
Based on the work of angellsl10 (https://github.com/angellsl10/I1D6-C109S-Hi10Pro/tree/master/touchscreen)

Verified to work on Chuwi Hi10 Pro with Z8300 CPU (Serial number below PQ64G42160905000).