Teclast/X5 Pro
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Teclast |
| Device                    | X5 Pro |
| Website                   | http://www.teclast.com/en/zt/X5Pro/ |
| Vendor driver (Windows)   |  |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1200 |
| Touch panel resolution    | 1982x1527(estimated by testing) |
| Touch controller          | ? |
| Multitouch support        | Yes (10) |
| Finger tracking           | No |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1982 -h 1527 -t 10 -f track silead_ts.fw |
