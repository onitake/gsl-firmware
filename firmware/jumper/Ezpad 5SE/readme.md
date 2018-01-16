jmunper/EZpad_5SE
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | jumper |
| Device                    | EZpad 5se |
| Website                   | https://www.gearbest.com/tablet-pcs/pp_443419.html |
| Vendor driver (Windows)   | https://pan.baidu.com/s/1eSoPi2u |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gsl3680-acpi | Yet, sorry |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 31*20 (X*Y) (http://dl.linux-sunxi.org/touchscreen/GSL3680_touch-screen-controller-ic-DataSheet_Chinese_RevA1.2.pdf) |
| Touch controller          | GSL3680 |
| Multitouch support        | 10 |
| Finger tracking           | Yes |
| Mirrored horizontally     | ? |
| Mirrored vertically       | ? |
| Axes swapped              | Yes |
| Comments                  | /fwtool -c firmware.fw -m 3680 -w 1920 -h 1080 -t 10 silead_ts.fw |