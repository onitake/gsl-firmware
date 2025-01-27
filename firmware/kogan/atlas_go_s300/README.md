kogan/atlas_go_s300
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | [Kogan](https://www.kogan.com/au/) |
| Device                    | Atlas Go S300 (KALAP13S300VA) |
| Website                   | (no longer exists; manual: https://help.kogan.com/s/article/KoganAtlasGoS300KALAP13S300VAManual) |
| Vendor driver (Windows)   | https://support-files.kogan.com/KALAP13S300VA/HQ-JX-13.3-SF133GR210-GA54D-049-C.zip |
| Extracted firmware        | [silead.fw](silead.fw) [rename to mssl1680.fw and place in /lib/firmware/silead] |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 3600x2950 (estimate) |
| Touch controller          | GSL1680 (unverified) |
| Multitouch support        | Yes, multitouch gestures working in GNOME (should support 10 fingers) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No|
| Axes swapped              | No |
| Comments                  | Touchscreen Props: `i2c_touchscreen_props=MSSL1680:touchscreen-min-x=1:touchscreen-min-y=16:touchscreen-size-x=3600:touchscreen-size-y=2950` |