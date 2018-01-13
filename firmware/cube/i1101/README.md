Cube/i1101
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Cube(ALLDOCUBE) |
| Device                    | KNote(i1101) |
| Website                   | [http://51cube.com/knote.html](Product Homepage) |
| Vendor driver (Windows)   | [windows/SileadTouch.sys](SileadTouch.sys) |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1940x1500 |
| Touch controller          | GSL1680(MSSL1680) |
| Multitouch support        | Yes(10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | `fwtool -c firmware.fw_1 -m 1680 -w 1940 -h 1500 -t 10 -f track silead_ts.fw` |
