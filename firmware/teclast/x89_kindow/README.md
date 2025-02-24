Teclast/X89 Kindow
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Teclast |
| Device                    | X89 Kindow |
| Website                   | https://www.teclast.com/zt/x89kindow/ |
| Vendor driver (Windows)   | https://1drv.ms/u/s!AmcmANHiV08fnzzVk9wG48BeiE7W?e=YbnK8u (extracted from Windows Install.wim) |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1440x1080 |
| Touch panel resolution    | 1660x860 (by trial and error) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | Yes |
| Mirrored vertically       | No |
| Axes swapped              | Yes |
| Comments                  | tools/fwtool -c firmware.fw -m 1680 -w 860 -h 1660 -f track,swap,xflip -t 10 silead_ts.fw |
