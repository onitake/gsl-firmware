onda/v891_v5
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Onda |
| Device                    | v891 v5 |
| Website                   | http://cs.onda.cn/Tablet/ProductInfo.aspx?ProductId=375 |
| Vendor driver (Windows)   | https://pan.baidu.com/s/1dDCmYZJ |
| Extracted firmware        | [gsl3676-onda-v891-v5.fw](../../linux/silead/gsl3676-onda-v891-v5.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1280x800 |
| Touch panel resolution    | 1720x1140 |
| Touch controller          | GSL3676 |
| Multitouch support        | Yes (10) |
| Finger tracking           | No  |
| Mirrored horizontally     | Yes |
| Mirrored vertically       | Yes |
| Axes swapped              | Yes |
| Comments                  | fwtool -c firmware.fw -w 1140 -h 1720 -t 10 silead_ts.fw -f swap,track,yflip,xflip |
