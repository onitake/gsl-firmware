Cube/i1101S
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Cube(ALLDOCUBE) |
| Device                    | KNote Go(i1101S) |
| Website                   | [Product Homepage](http://51cube.com/windows/knote-go.html/) |
| Vendor driver (Windows)   | [SileadTouch.sys](windows/SileadTouch.sys)|
| Extracted firmware        | [silead.fw](silead.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1961x1513 |
| Touch controller          | GSL3692 |
| Multitouch support        | Yes(10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | `fwtool -c silead.fw -m 1680 -w 1961 -h 1513 -t 10 -f track silead_ts.fw` |


