| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI 1808 (ES1028EW) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 14.48.2.983 (10/10/2016), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `citi_1808_es1028ew_rev1_Win10_RS5_drivers_20190424.rar` |
| Driver download | not known |
| Extracted firmware | firmware.fw (36960 bytes, 140 pages, git blob 799ef9500ee49b55095c4bb232a34e8838085b51, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
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
