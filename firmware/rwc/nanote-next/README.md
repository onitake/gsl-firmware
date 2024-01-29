RWC/Nanote Next
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | RWC |
| Device                    | Nanote Next UMPC-03-SR |
| Website                   | Unknown |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1200x1920 |
| Touch panel resolution    | 1200x800 |
| Touch controller          | GSLx680 |
| Multitouch support        | Yes (10 points) (untested) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | ./fwtool -c firmware.fw -m 1680 -w 1920 -h 1200 -t 10 -f yflip silead_ts.fw |
