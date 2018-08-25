insignia/flex11
------------------------------------------------------------------------------------------------

| Item                      | Description                                                      |
|---------------------------|------------------------------------------------------------------|
| Manufacturer              | Insignia                                                         |
| Device                    | Flex 11.6 Convertable Laptop / Tablet NS-P11W7100                |
| Website                   | https://www.insigniaproducts.com/pdp/NS-P11W7100/5255800         |
| Vendor driver (Windows)   | SileadTouch.sys                                                  |
| Extracted firmware        | firmware.fw                                                      |
| Firmware for gslx680-acpi | silead_ts.fw                                                     |
| Display resolution        |  1920x1080                                                       |
| Touch panel resolution    | 1920x1620                                                        |
| Touch controller          | GSL1680                                                          |
| Multitouch support        | Yes (10)                                                         |
| Finger tracking           | No                                                               |
| Mirrored horizontally     | No                                                               |
| Mirrored vertically       | Yes                                                              |
| Axes swapped              | No                                                               |
| Comments | ./fwtool -c firmware.fw -m 1680 -w 1920 -h 1620 -t 10 -f yflip,track silead_ts.fw |
