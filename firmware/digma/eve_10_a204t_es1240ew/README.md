| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | EVE 10 A204T (ES1240EW) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 14.57.23.746 (04/02/2021), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `eve_10_a204t_es1240ew_drivers_bc_21.04.2022.rar` |
| Driver download | not known |
| Extracted firmware | firmware.fw (41184 bytes, 156 pages, git blob 33ec0ccbe4c64cd6839a5d86d2bc4d33aea312da, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
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
