digma/citi_e200
---------------------------------------------------------------------------------------------------------
| Item                      | Description                                                               |
|---------------------------|---------------------------------------------------------------------------|
| Manufacturer              | Digma                                                                     |
| Device                    | Citi E200 (ES2000EW)                                                      |
| Website                   | http://digma.ru/catalog/item/2266/                                        |
| Vendor driver (Windows)   | http://dl.digma.ru/01098                                                  |
| Extracted firmware        | [firmware.fw](firmware.fw)                                                |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw)                                              |
| Display resolution        | 1920x1080                                                                 |
| Touch panel resolution    | 1980x1500 (estimated by testing, matches very good)                       |
| Touch controller          | GSL1680                                                                   |
| Multitouch support        | Yes (10 points)                                                           |
| Finger tracking           | Not sure                                                                  |
| Mirrored horizontally     | No                                                                        |
| Mirrored vertically       | Yes                                                                       |
| Axes swapped              | No                                                                        |
| Comments                  | fwtool -c firmware.fw -m 1680 -w 1980 -h 1500 -t 10 -f yflip silead_ts.fw |
---------------------------------------------------------------------------------------------------------

digma/citi_e200_es2000ew/windows_10_drivers folder has 2 versions of the driver:
v11.16.5.860 is taken from the C://Windows/System32/drivers folder.
v11.34.20.359 is taken from the official website.

Files firmware.fw and silead_ts.fw are based on the v11.34.20.359 driver.

Note on the extracted firmware (added later)
--------------------------------------------

`windows_10_drivers/v11.34.20.359/SileadTouch.sys` (git blob b99589513775bf522e4f29b3b72ede6358719d27; the same file is in the
Digma factory driver package `citi_e200_es2000ew_rev1_win10x64_b1803_drivers_20180227`) contains one firmware image of
**144 pages (38016 bytes)**. `firmware.fw` in this folder (and `firmware/linux/silead/gsl1686-digma_citi_e200.fw`,
used by `touchscreen_dmi.c`) has **143 pages (37752 bytes)**: it is the same image without the last page (page register
0x9f). Everything else is byte-identical.

The full 144-page image is byte-identical to [firmware/odys/fusionwin12](../../odys/fusionwin12) `firmware.fw`
(git blob 94fce7998383ebf6affe6bd0410decf01c0cbf42), so the Digma Citi E200 and the Odys Fusion Win 12 use the same
Silead firmware. Whether the missing page matters was not tested.
