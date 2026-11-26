| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI E203 (ES2010EW) |
| SoC | Intel Apollo Lake (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 15.29.28.224 (11/20/2017), files in `SileadTouch/`, from the Windows 10 (RS3) driver package of the device, `citi_e203_es2010ew_rev1_RS3_drivers_20180331.zip` |
| Driver download | not known |
| Extracted firmware | firmware.fw (39864 bytes, 151 pages, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
| Firmware for gslx680-acpi | not provided |
| Display resolution | not known |
| Touch panel resolution | not known |
| Touch controller | MSSL1680 (ACPI ID from the driver INF; chip marking not known) |
| Multitouch support | not known |
| Finger tracking | not known |
| Mirrored horizontally | not known |
| Mirrored vertically | not known |
| Axes swapped | not known |
| Comments | **Not tested on a device.** The firmware was extracted from the vendor driver package only; touch size and axes still have to be measured on a real CITI E203. |
