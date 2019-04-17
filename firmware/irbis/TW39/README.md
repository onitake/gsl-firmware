Irbis/TW39
--------------------------------------
| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Irbis       |
| Device                    | TW39       |
| Website                   | https://www.irbis.su/category/portable/notebooks/product/187 |
| Vendor driver (Windows)   | ftp://ftp.irbis.su/%23fw.tablets.windows/Tablet%20IRBIS%20TW39/ |
| Firmware for gslx680-acpi | silead_ts.fw |
| Display resolution        | 800x1280   |
| Touch panel resolution    | 900x1600   |
| Touch controller          | GSL1680     |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes         |
| Mirrored horizontally     | Yes          |
| Mirrored vertically       | No          |
| Axes swapped              | Yes          |
| Comments                  | ./fwtool -c SileadTouch.fw -3 -m 1680 -w 900 -h 1600 -t 10 -f track,xflip,swap silead_ts.fw |
--------------------------------------
