positivo/c464c
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Positivo |
| Device                    | C464C |
| Website                   | https://loja.meupositivo.com.br/-notebook-positivo-motion-q464c-motion-intel-atom-quad-core-windows10-home-4gb-64gb-tela14-cinza/p |
| Vendor driver (Windows)   | http://drivers.positivoinformatica.com.br//11158362_TOUCHPAD.zip |
| Extracted firmware        | [silead.fw](silead.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1920x1270 |
| Touch controller          | 1680 |
| Multitouch support        | Yes |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Tested                    | Yes (work with gsl1680 module, malfunction with silead module) |
| Comments                  | Generated with `../../tools/scanwindrv drivers/SileadTouch.sys silead.fw && ../../tools/fwtool -c silead.fw -m 1680 -w 1920 -h 1270 -t 10 -f track silead_ts.fw`. Credits to Jeysibel Dantas. |
