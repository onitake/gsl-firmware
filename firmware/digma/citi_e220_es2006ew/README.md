| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI E220 (ES2006EW) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 14.47.17.1 (05/18/2017), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `citi_e220_es2006ew_w10x64_drivers_20171016.rar` |
| Driver download | not known |
| Extracted firmware | firmware.fw (36960 bytes, 140 pages, git blob b23317193ce4514645926b9bbc25701f46194b93, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
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
