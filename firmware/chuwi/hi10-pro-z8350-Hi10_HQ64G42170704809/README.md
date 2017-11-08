CHUWI Hi10 Pro 2 in 1 Ultrabook Tablet PC
hi10-pro-z8350-Hi10_HQ64G42170704809
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi |
| Device                    | CHUWI Hi10 Pro 2 in 1 Ultrabook Tablet PC, INTEL CHERRY TRAIL X5-Z8350, rev: Hi10 HQ64G42170704809 |
| Website                   | http://en.chuwi.com/product/items/Chuwi-Hi10-Pro.html |
| Vendor driver (Windows)   | Found in C:/Windows/System32/Drivers |
| Extracted firmware        | firmware.fw |
| Firmware for gslx680-acpi | silead_ts.fw |
| Display resolution        | 1920x1200 |
| Touch panel resolution    | 1925x1260 (estimate) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1895 -h 1275 -t 10 -f yflip silead_ts.fw |

Details:

The driver used for extraction is taken from the preinstalled Windows 10 installation.

Tested with gslx680_ts_acpi with Ubuntu 17.10, http://linuxiumcomau.blogspot.com.br/2017/10/, atom https://goo.gl/DfhG72

kernel:
    4.13.0-16-generic #19-Ubuntu SMP Wed Oct 11 18:35:14 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
    
reference for extraction:
    extract.sh
    
    https://github.com/philipn1996/gsl-firmware/blob/master/firmware/trekstor/surftab-twin-10.1-ST10432-8/README.md#following-is-just-for-reference-if-one-wants-to-extract-firmware-from-sileadtouchsys
