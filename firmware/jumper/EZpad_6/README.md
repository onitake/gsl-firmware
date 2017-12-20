jmunper/EZpad_6
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | jumper |
| Device                    | EZpad 6 |
| Website                   | http://mall.jumper.com.cn/home/products/showproducts.html?id=43 |
| Vendor driver (Windows)   | https://pan.baidu.com/s/1hsmkW3E |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | Maybe(1980x1500) |
| Touch controller          | WSSL1680 |
| Multitouch support        | 10 |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | ./gsl-firmware/tools/fwtool -c firmware.fw -m 1680 -w 1980 -h 1500 -t 10 -f yflip silead_ts.fw |
