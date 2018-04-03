Chuwi/SurBook mini
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi |
| Device                    | SurBook mini |
| Website                   | https://en.chuwi.com/product/items/Chuwi-SurBook-mini.html |
| Vendor driver (Windows)   | http://www.mediafire.com/file/z3s4akh2rzxp03f/SURbook_MINI_Driver.rar |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1280 |
| Touch panel resolution    | 2040x1524 |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments | tools/fwtool -c firmware.fw -m 1680 -w 2040 -h 1524 -t 10 -f yswap silead_ts.fw |
