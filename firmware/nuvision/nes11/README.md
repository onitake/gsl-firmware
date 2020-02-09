Nuvision/NES11
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Nuvision |
| Device                    | NES11 |
| Website                   | [Manufacturer Website](https://www.nuvision.com) |
| Vendor driver (Windows)   | [SileadTouch.sys](windows/SileadTouch.sys) |
| Extracted firmware        | [silead.fw](silead.fw)  |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1989x1539 (estimated from evtest output) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Unknown |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | fwtool -c silead.fw -1 -w 1989 -h 1539 -t 10 -f yflip silead_ts.fw |
