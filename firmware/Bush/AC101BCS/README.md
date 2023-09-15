BUSH/AC101BCS
--------------------------------------
| Item                      | Description                                                               |
|---------------------------|---------------------------------------------------------------------------|
| Manufacturer              | Bush                                                                      |
| Device                    | AC101BCS                                                                  |
| Extracted firmware        | firmware_03.fw                                                            |
| Firmware for gslx680-acpi | silead_ts.fw                                                              |
| Display resolution        | 1850X1280                                                                  |
| Touch panel resolution    | Unknow                                                                    |
| Touch controller          | GSL1680                                                                   |
| Multitouch support        | Yes (10 points)                                                           |
| Finger tracking           | No                                                                        |
| Mirrored horizontally     | No                                                                       |
| Mirrored vertically       | Yes                                                                        |
| Axes swapped              | Yes                                                                       |
| Comments                  | tools/fwtool -c ../firmware_03.fw -m 1680 -w 1850 -h 1280 -t 10 -f xflip,noyflip,swap,track silead_ts.fw           |
--------------------------------------
