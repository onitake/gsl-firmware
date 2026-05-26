insignia/flex10
------------------------------------------------------------------------------------------------

| Item                      | Description                                                      |
|---------------------------|------------------------------------------------------------------|
| Manufacturer              | Insignia                                                         |
| Device                    | Flex 10.1 Convertable Laptop / Tablet NS-P10W8100                |
| Website                   | https://www.insigniaproducts.com/pdp/NS-P10W8100/5855905         |
| Vendor driver (Windows)   | sileadtouch.sys                                                  |
| Extracted firmware        | firmware.fw                                                      |
| Firmware for gslx680-acpi | silead_ts.fw                                                     |
| Display resolution        | 1280x800                                                         |
| Touch panel resolution    | 1920x1560                                                        |
| Touch controller          | GSL1680                                                          |
| Multitouch support        | Yes (10)                                                         |
| Finger tracking           | No                                                               |
| Mirrored horizontally     | Yes                                                              |
| Mirrored vertically       | No                                                               |
| Axes swapped              | No                                                               |
| Comments | ./fwtool -c firmware.fw -m 1680 -w 1920 -h 1560 -t 10 -f track,xflip silead_ts.fw |
