Chuwi/Hi10 Pro
--------------------------------------
| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi       |
| Device                    | Hi10 Pro (CWI529)   |
| Website                   | http://en.chuwi.com/product/items/Chuwi-Hi10-Pro.html |
| Vendor driver (Windows)   | Found in C:/Windows/System32/Drivers |
| Extracted firmware        | firmware.fw |
| Firmware for gslx680-acpi | silead_ts.fw |
| Display resolution        | 1920x1200   |
| Touch panel resolution    | 1925x1260 (estimate)   |
| Touch controller          | GSL1680     |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes         |
| Mirrored horizontally     | No          |
| Mirrored vertically       | No          |
| Axes swapped              | Yes          |
| Comments                  | fwtool -c ./firmware.fw -m 1680 -w 1260 -h 1925 -t 10 -f track,swap silead_ts.fw |
--------------------------------------

Firmware extracted from Windows driver like described here: https://github.com/philipn1996/gsl-firmware/blob/master/firmware/trekstor/surftab-twin-10.1-ST10432-8/README.md#command-to-find-the-offsets-used-for-extraction

Verified to work on Chuwi Hi10 Pro with Z8350 CPU (Serial Number begins with HQ64 (20161209)) 
