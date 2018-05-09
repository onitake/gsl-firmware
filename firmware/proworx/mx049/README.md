proworx/mx049
--------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Proworx |
| Device                    | E-Board MX049 |
| Website                   | - |
| Vendor driver (Windows)   | http://download.chiligreen.com/treiber.asp?s=Tablet&m=MX049&k=Driver |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | - |
| Display resolution        | 1024x600 |
| Touch panel resolution    | ~236x92 |
| Touch controller          | - |
| Multitouch support        | Yes(5) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | Udev rule for calibration: `ENV{ID_PATH}=="platform-80860F41:03",ENV{LIBINPUT_CALIBRATION_MATRIX}="4.35 0 -0.01 0 6.5 -0.02 0 0 1"` |
