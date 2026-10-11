multilaser/m7s
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Multilaser |
| Device                    | M7S Quadcore (firmware build ML11-M7sQuadCore, V6_20170330) |
| SoC                       | Allwinner A33 |
| Vendor firmware           | Android 4.4.2 image `AQ7-ML11-M7sQuadCore.V6-sig-20170330.img` |
| Extracted firmware        | [silead.fw](silead.fw) |
| Display resolution        | 1024x600 |
| Touch panel resolution    | 13..946 x 15..617 raw (measured on the device, panel scan origin at top-left) |
| Touch controller          | 1680 (variant `gsl1680_k70` in the vendor driver, I2C address 0x40) |
| Multitouch support        | Yes |
| Finger tracking           | ? |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | Taken from the `GSL1680_K70_FW` array of the vendor `gslX680` kernel module in the Android system image. It is already in the format of the mainline `silead.ko` driver (little-endian `{address, value}` pairs), so no conversion was needed. Tested with Linux 6.12 on the device. Device tree: `touchscreen-min-x = <13>; touchscreen-size-x = <947>; touchscreen-min-y = <15>; touchscreen-size-y = <618>; touchscreen-inverted-y;` |
