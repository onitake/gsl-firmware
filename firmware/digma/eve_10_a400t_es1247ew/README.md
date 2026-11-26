| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | EVE 10 A400T (ES1247EW) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 17.53.8.325 (06/22/2020), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `eve_10_a400t_es1247ew_rev1_drivers_20210726.zip` |
| Driver download | not known |
| Extracted firmware | firmware.fw (41448 bytes, 157 pages, git blob 794463947a5c8313568d44fb70d86c408eb374d1, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
| Firmware for gslx680-acpi | not provided |
| Display resolution | not known |
| Touch panel resolution | not known |
| Touch controller | MSSL1680 (ACPI ID from the driver INF; chip marking not known) |
| Multitouch support | not known |
| Finger tracking | not known |
| Mirrored horizontally | not known |
| Mirrored vertically | not known |
| Axes swapped | not known |
| Comments | **Not tested on a device.** The firmware was extracted from the vendor driver package only; touch size and axes still have to be measured on a real device. |
