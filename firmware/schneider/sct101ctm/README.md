Schneider/SCT101CTM
-------------------------------------------
| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Schneider   |
| Device                    | SCT101CTM   |
| Website                   | https://www.schneiderconsumer.com/en/product/2-in-1-full-hd-tablet/ |
| Vendor driver (Windows)   | [SileadTouch.sys](SileadTouch.sys) (found in C:/Windows/System32/DriverStore) |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1200   |
| Touch panel resolution    | 1715x1140   |
| Touch controller          | GSL1680     |
| Multitouch support        | Yes         |
| Finger tracking           | Yes         |
| Mirrored horizontally     | Yes         |
| Mirrored vertically       | Yes         |
| Axes swapped              | Yes         |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1140 -h 1715 -t 10 -f swap,xflip,yflip silead_ts.fw |

