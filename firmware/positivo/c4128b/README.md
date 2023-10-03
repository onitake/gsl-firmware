positivo/c4128b
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Positivo |
| Device                    | C4128B   |
| Website                   | <https://loja.meupositivo.com.br/notebook-positivo-duo-c-4128b-celeron-dual-core-windows-11-home-tela-11-full-hd-touch-tecla-netflix-cinza/p> |
| Vendor driver (Windows)   | <https://drivers.positivoinformatica.com.br//11171900_TOUCHPAD.zip> |
| Extracted firmware        | [silead.fw](silead.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1917x1270 (estimated via evtest) |
| Touch controller          | *Unknown* |
| Multitouch support        | Yes (10 points) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Tested                    | Functional with `gslx680-acpi`, `silead` works after patching the kernel |
| Comments                  | Used same parameters as positivo/c464c: `../../tools/scanwindrv SileadTouch.sys && ../../tools/fwtool -c firmware_00.fw -m 1680 -w 1917 -h 1270 -t 10 silead_ts.fw` :: evtest says lowest X position is 4, lowest Y position is 11 |
