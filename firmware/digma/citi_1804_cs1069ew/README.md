| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI 1804 (CS1069EW), board J210Z |
| SoC | Intel Atom x5-Z8350 (Cherry Trail), 32-bit UEFI |
| Original driver | SileadTouch 16.51.31.27 (06/02/2017), files in `SileadTouch/`, from the Windows 10 driver package of the tablet |
| Driver download | https://www.ddixlab.com/public/digma/tabletpc/citi/citi_1804_cs1069ew/citi_1804_cs1069ew_rev1_Win10x32_drivers_RS3_20180426.rar |
| Extracted firmware | firmware.fw (36960 bytes, extracted from SileadTouch.sys); the same file is in [firmware/linux/silead/gsl1680-digma-citi-1804.fw](../../linux/silead/gsl1680-digma-citi-1804.fw) |
| Firmware for gslx680-acpi | not provided |
| Display resolution | 1200x1920 (native portrait panel) |
| Touch panel resolution | 1728x1152 (raw, measured at the corners) |
| Touch controller | MSSL1680 (chip ID 0x80360000) |
| Multitouch support | Yes (10 points, checked with evtest; with 1-5 fingers touches are stable, with 8-10 fingers close together single points sometimes drop out for less than 50 ms) |
| Finger tracking | Not sure (the mainline silead driver always does software tracking, so evtest cannot show it) |
| Mirrored horizontally | No |
| Mirrored vertically | No |
| Axes swapped | Yes |
| Comments | Works with the mainline `silead` driver (Linux 6.18) as `/lib/firmware/silead/mssl1680.fw` and the kernel parameter `i2c_touchscreen_props=MSSL1680:touchscreen-size-x=1728:touchscreen-size-y=1152:touchscreen-swapped-x-y:silead,home-button`. The Windows logo on the bezel works as a home button. Tested on postmarketOS v26.06 (Phosh). More: https://github.com/darkonline/cherry-trail-linux_digma-citi-1804 |
