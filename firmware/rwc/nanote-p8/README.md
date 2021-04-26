<RWC>/<Nanote P8>
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | RWC |
| Device                    | Nanote P8 UMPC-02-SR |
| Website                   | https://www.donki.com/j-kakaku/product/detail.php?item=3194 |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1200 |
| Touch panel resolution    | 1920x1200 (assumed) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | ./fwtool -c firmware.fw -m 1680 -w 1920 -h 1200 -t 10 -f yflip silead_ts.fw |
