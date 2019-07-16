insignia/flex8
------------------------------------------------------------------------------------------------

| Item                      | Description                                                      |
|---------------------------|------------------------------------------------------------------|
| Manufacturer              | Insignia                                                         |
| Device                    | Flex 8 Tablet NS-P08W7100                                        |
| Website                   | https://www.insigniaproducts.com/pdp/NS-P08W7100/5451211         |
| Vendor driver (Windows)   | SileadTouch.sys                                                  |
| Extracted firmware        | firmware.fw                                                      |
| Firmware for gslx680-acpi | silead_ts.fw                                                     |
| Display resolution        | 800x1280                                                         |
| Touch panel resolution    | 1140x1720                                                        |
| Touch controller          | GSL1680                                                          |
| Multitouch support        | Yes (10)                                                         |
| Finger tracking           | Yes                                                              |
| Mirrored horizontally     | Yes                                                              |
| Mirrored vertically       | No                                                               |
| Axes swapped              | Yes                                                              |
| Comments | ./fwtool -c firmware.fw -m 1680 -w 1140 -h 1720 -t 10 -f xflip,swap silead_ts.fw  |
