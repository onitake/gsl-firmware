| Item | Description |
| ---- | ----------- |
| Manufacturer | Digma |
| Device | CITI 1802 (ES1061EG) |
| SoC | Intel Cherry Trail (by the Serial IO / GPIO / graphics IDs in the driver package); exact CPU model not known |
| Original driver | SileadTouch 20.3.19.235 (05/30/2016), files in `SileadTouch/`, from the 64-bit Windows 10 driver package of the device, `citi_1802_es1061eg_w10h64sl_RS5_drivers.zip` |
| Driver download | not known |
| Extracted firmware | firmware.fw (39600 bytes, 150 pages, git blob 70211b2009ae2b3b5f90a1e983ec779412e3effa, extracted from SileadTouch.sys with the same method as `tools/scanwindrv`; the driver contains exactly one firmware image) |
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
