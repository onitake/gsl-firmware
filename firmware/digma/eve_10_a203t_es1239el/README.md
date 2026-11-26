| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | EVE 10 A203T (ES1239EL) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 16.44.33.669 (04/19/2021), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `eve_10_a203t_es1239el_drivers_rev1_factory_20210607.rar` |
| Driver download | not known |
| Extracted firmware | firmware.fw (41184 bytes, 156 pages, git blob ab697cc8ebca60792bfbfc2a729c0cec929a0b25, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
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
