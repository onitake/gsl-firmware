rca/cambio/w101v2
--------------------

| Item | Description |
|------|-------------|
| Manufacturer            | RCA                      |
| Device                  | Cambio W101 V2 10.1 tablet |
| Website                 | https://rcaav.com/tablets/windows/cambio-w101-v2/ |
| Vendor driver (Windows) |  |
| Extracted firmware      | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Touch panel resolution  | 1650x880 |
| Touch controller        | GSL1680 |
| Multitouch support      | Yes |
| Finger tracking         | 10 |
| Mirrored horizontally   | Yes |
| Mirrored vertically     | Yes |
| Axes swapped            | No |
| Comments                | fwtool -c firmware.fw -m 1680 -w 1650 -h 880 -t 10 -f xflip,yflip silead_ts.fw |
|                         | Touchscreen resolution (1650x880) seems to be higher than the display (1280x800).  These settings worked well. |
