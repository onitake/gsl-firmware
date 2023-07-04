archos/101 Cesium Educ
----------------------

| Item | Description |
|------|-------------|
| Manufacturer            | Archos                   |
| Device                  | 101 Cesium Educ          |
| Website                 | https://www.archos.com/solutions-mobiles/ |
| Vendor driver (Windows) | ? |
| Extracted firmware      | [gsl1680-archos-101-cesium-educ.fw](../../linux/silead/gsl1680-archos-101-cesium-educ.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution      | 1280x800|
| Touch panel resolution  | Unknow |
| Touch controller        | GSL1680 |
| Multitouch support      | Yes (10 points) |
| Finger tracking         | No |
| Mirrored horizontally   | Yes |
| Mirrored vertically     | No |
| Axes swapped            | Yes |
| Comments                | tools/fwtool -c ../firmware_00.fw -m 1680 -w 1280 -h 1850 -t 10 -f xflip,noyflip,swap,track silead_ts.fw |
