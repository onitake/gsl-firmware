Chuwi/SurBook mini
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Chuwi |
| Device                    | SurBook mini |
| Website                   | https://en.chuwi.com/product/items/Chuwi-SurBook-mini.html |
| Vendor driver (Windows)   | http://www.mediafire.com/file/z3s4akh2rzxp03f/SURbook_MINI_Driver.rar |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1280 |
| Touch panel resolution    | 2040x1524 (estimated) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments | fwtool -c firmware.fw -m 1680 -w 2040 -h 1524 -t 10 -f yswap silead_ts.fw |

You'll need to calibrate your touch panel before use.

As of late 2017, the usual calibration methods using "xinput_calibrator" won't work anymore in modern Linux distros. This is mainly because they now use the "libinput" libraries to handle input devices instead of the old "xinput" libraries.

The following page on the Arch Linux Wiki, and more precisely the discussion about the page are the most helpful online resources I could find on the subject:
https://wiki.archlinux.org/index.php/Talk:Calibrating_Touchscreen
