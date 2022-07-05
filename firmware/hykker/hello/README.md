Hykker/Hello
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Hykker |
| Device                    | Hello |
| Website                   | https://www.hykker.com/sprzet-komputerowy/laptop-hello/ |
| Vendor driver (Windows)   | https://download.mptech.eu/Hykker/Hykker%20Hello%20laptop/Drivers/drivers.zip |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1920x1280 (approximated from guessing) |
| Touch controller          | GSL3680 |
| Multitouch support        | No |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | Command to extract firmware: tools/fwtool -c NT16G_X64_3680_L_PG_HK_ZT180822.h -m 3680 -w 1980 -h 1280 -t 10 -f yflip -2 silead_ts.fw |

Only gsl3680-acpi driver was tested.
