Chuwi/Hi10 Air
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi       |
| Device                    | Hi10 Air  |
| Website                   | http://en.chuwi.com/product/items/Chuwi-Hi10-Air.html |
| Vendor driver (Windows)   | Extracted from Stock https://forum.chuwi.com/forum.php?mod=viewthread&tid=6861&extra=page%3D1%26filter%3Dtypeid%26typeid%3D101 |
| Extracted firmware        |  [gsl1680-chuwi-hi10-air.fw](../../linux/silead/gsl1680-chuwi-hi10-air.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1200 |
| Touch panel resolution    | 1980x1270 |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | Yes |
| Comments | fwtool -c ./gsl1680-chuwi-hi10-air.fw -m 1680 -w 1270 -h 1980 -t 10 -f track,swap silead_ts.fw |
