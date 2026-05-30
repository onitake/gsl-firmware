fusion5/FWIN232
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Fusion5 |
| Device                    | FWIN232 (Product Id: FUSION5.WI101C.HFBNRBA0 BIOS Version: 05.04.47) |
| Website                   |  |
| Vendor driver (Windows)   |  |
| Extracted firmware        | [mssl1680.fw](mssl1680.fw) |
| Display resolution        | 1280x800 |
| Touch panel resolution    | 1700x1138 |
| Touch controller          | GSL3676 |
| Multitouch support        | Yes (10 touch points) |
| Finger tracking           | Yes - Handled by chip |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | Yes |
| Comments                  | Command used to extract firmware: ./scanwindrv SileadTouch.sys, To ensure the firmware works correctly it should be placed in /lib/firmware/silead/ and should be named mssl1680.fw You also need to apply this to your GRUB_CMDLINE_LINUX_DEFAULT by editing /etc/default/grub: `i2c_touchscreen_props=MSSL1680:touchscreen-min-x=4:touchscreen-min-y=6:touchscreen-size-x=1700:touchscreen-size-y=1138:touchscreen-swapped-x-y:touchscreen-inverted-y:silead,home-button gpiolib_acpi.ignore_interrupt=INT33FC:02@21` this ensures the touch works correctly and the windows touch button on the bottom of the screen works. Note: These kernel parameters are specifically tuned for BIOS version 05.04.47. Users with different BIOS versions may need to verify their ACPI interrupt mapping using `dmesg \| grep -i silead` if touch does not initialize. |