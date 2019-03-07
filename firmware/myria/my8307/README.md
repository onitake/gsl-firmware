Myria/my8307
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Myria ('Complet Electro Serv') |
| Device                    | my8307 |
| Website                   | http://myria.ro |
| Vendor driver (Windows)   | [SileadTouch.sys](SileadTouch.sys), https://www.dropbox.com/sh/9j3p7sjg35v2r8p/AABCpualjSzk6Ybu1mlEpQWZa?dl=0 |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1280x800 |
| Touch panel resolution    | 1720x1140 |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | No |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1720 -h 1140 -f track,yflip -t 10 silead_ts.fw |
