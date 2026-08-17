Teclast/TbooK 10
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Teclast |
| Device                    | TbooK 10 (Tbook 10) |
| Vendor driver (Windows)   | [SileadTouch.sys](SileadTouch.sys) (bundled with device, 2016-03-17) |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Display resolution        | 1920x1200 (1200x1920 panel) |
| Touch panel resolution    | 1970x1520 |
| Touch controller          | GSL3692 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | Yes |
| Axes swapped              | No |
| Comments                  | firmware.fw is in mainline silead_ts format, ready for /lib/firmware/silead/mssl1680.fw |

Notes:
- firmware.fw was extracted from the vendor Windows driver SileadTouch.sys
  (look for the `f0 00 00 00 02 00 00 00` magic in the driver binary).
- On Linux, the touchscreen needs the calibration props, e.g. via the
  `i2c_touchscreen_props` kernel parameter:
  `i2c_touchscreen_props=MSSL1680:touchscreen-min-x=10:touchscreen-min-y=10:touchscreen-size-x=1970:touchscreen-size-y=1520:touchscreen-inverted-y`
- The panel is mounted upside down in the chassis; the display is rotated
  90 degrees to landscape (1920x1200).
