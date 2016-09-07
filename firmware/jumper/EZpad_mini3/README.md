Jumper EZpad mini3
--------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Jumper |
| Device                    | EZpad mini3 |
| Website                   | http://www.jumper.com.cn/en/products.php?id=53&bid=1 |
| Vendor driver (Windows)   | ??? |
| Extracted firmware        | [SileadTouch.fw](SileadTouch.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1280x800 |
| Touch panel resolution    | ? (unverified) |
| Touch controller          | ? |
| Multitouch support        | Yes (10) (unverified, silead_ts.fw was made with 2 and verified) |
| Finger tracking           | ? |
| Mirrored horizontally     | No (unverified) |
| Mirrored vertically       | No (unverified) |
| Axes swapped              | No |
| Comments                  | ./fwtool -c SileadTouch.fw -m 1680 -w 1280 -h 800 -t 2 silead_ts.fw |


Please use with xinput_calibrator, and I put this file as
/usr/share/X11/xorg.conf.d/99-mytablet.conf

```
Section "InputClass"
    Identifier   "calibration"
    MatchProduct "Silead GSLx680 Touchscreen"
    Option       "Calibration"    "15 1704 1119 62"
    Option       "SwapAxes"       "0"
EndSection
```

