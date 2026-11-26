| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI E222 (ES2016EW) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 13.59.25.853 (10/28/2016), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `citi_e222_es2016ew_hw1_win10_drivers_20180403.zip` |
| Driver download | not known |
| Extracted firmware | firmware.fw (38544 bytes, 146 pages, git blob 7f3600d3d1cfb076deaf7f618e6742eb6162e10b, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
| Firmware for gslx680-acpi | not provided |
| Display resolution | not known |
| Touch panel resolution | not known |
| Touch controller | MSSL1680 (ACPI ID from the driver INF; chip marking not known) |
| Multitouch support | not known |
| Finger tracking | not known |
| Mirrored horizontally | not known |
| Mirrored vertically | not known |
| Axes swapped | not known |
| Comments | **Not tested on a device.** The firmware was extracted from the vendor driver package only; touch size and axes still have to be measured on a real device. The driver package also contains a Kionix hinge-angle sensor driver (two accelerometers, KIOX010A + KIOX020A), so this is probably a 2-in-1 with a detachable/folding keyboard. |
