vinga/twizzle_j116
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Vinga |
| Device                    | Twizzle J116 (J116-P50464G) |
| Website                   | https://vinga.ua/ua/noutbuki/j116-p50464g.html |
| Vendor driver (Windows)   | https://vinga.ua/data/file/0/2/2/drivers_win_10x64_all_v2.zip |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1920x1280 (slightly taller) |
| Touch controller          | GSL1680 |
| Multitouch support        | Yes (10) |
| Finger tracking           | Unknown |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | Ukrainian notebook assembled in China. `firmware.fw` extracted from the header file, `silead_ts.fw` generated from the firmware file using `README` instructions. Use xinput_calibrate to calibrate the device as initial calibration may be a bit off due to assembly. Also the firmware sometimes stops working after suspend/resume cycle, I handle this via systemd service that reloads the gslx680_ts_acpi kernel module after wakeup. |
