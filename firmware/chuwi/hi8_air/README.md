Chuwi/Hi8 Air
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi       |
| Device                    | Hi8 Air  |
| Website                   | https://www.chuwi.com/product/items/Chuwi-Hi8-Air.html |
| Vendor driver (Windows)   | https://forum.chuwi.com/thread-5785-1-1.html |
| Extracted firmware        | [gsl3680-chuwi-hi8-air.fw](../../linux/silead/gsl3680-chuwi-hi8-air.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1200 |
| Touch panel resolution    | 1728x1148 (assumed) |
| Touch controller          | GSL3680 |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | Yes |
| Comments | fwtool -c gsl3680-chuwi-hi8-air.fw -m 3680 -w 1148 -h 1728 -t 10 -f swap silead_ts.fw
