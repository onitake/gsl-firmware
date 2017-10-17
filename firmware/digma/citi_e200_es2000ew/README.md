digma/citi_e200
---------------------------------------------------------------------------------------------------------
| Item                      | Description                                                               |
|---------------------------|---------------------------------------------------------------------------|
| Manufacturer              | Digma                                                                     |
| Device                    | Citi E200 (ES2000EW)                                                      |
| Website                   | http://digma.ru/catalog/item/2266/                                        |
| Vendor driver (Windows)   | http://dl.digma.ru/01098                                                  |
| Extracted firmware        | [firmware.fw](firmware.fw)                                                |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw)                                              |
| Display resolution        | 1920x1080                                                                 |
| Touch panel resolution    | 1980x1500 (estimated by testing, matches very good)                       |
| Touch controller          | GSL1680                                                                   |
| Multitouch support        | Yes (10 points)                                                           |
| Finger tracking           | Not sure                                                                  |
| Mirrored horizontally     | No                                                                        |
| Mirrored vertically       | Yes                                                                       |
| Axes swapped              | No                                                                        |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1980 -h 1500 -t 10 -f yflip silead_ts.fw |
---------------------------------------------------------------------------------------------------------

digma/citi_e200_es2000ew/windows_10_drivers folder has 2 versions of the driver:
v11.16.5.860 is taken from the C://Windows/System32/drivers folder.
v11.34.20.359 is taken from the official website.

Files firmware.fw and silead_ts.fw are based on the v11.34.20.359 driver.
