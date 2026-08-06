digma/citi_10_c402t_cs1044ew
----------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | DIGMA |
| Device                    | CITI 10 C402T (SKU CS1044EW, mainboard EII A101 V20) |
| Website                   | https://www.digma.ru/ |
| Vendor driver (Windows)   | Not available for public download. Recovered from the factory Windows installation on the device itself, from `C:\Recovery\OEM\Backup\Drivers\` (see `windows_10_drivers/`). The same driver binary is present in `C:\Windows\System32\drivers\SileadTouch.sys` and in the DriverStore. |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | not provided |
| Display resolution        | 800x1280 portrait panel (DSI-1), used as 1280x800 landscape |
| Touch panel resolution    | 1729x1149 (x: 2..1728, y: 15..1148) |
| Touch controller          | GSL3692 — taken from the vendor config file name (`ZC_A101H_3692_...`) and from `gsl_config_versions[1] = 0x369200` inside it. The chip was not visually verified, the device was not opened. |
| Multitouch support        | Yes (10 touch points) |
| Finger tracking           | Yes, the chip reports tracking IDs |
| Mirrored horizontally     | Yes (`touchscreen-inverted-x`) |
| Mirrored vertically       | No |
| Axes swapped              | Yes (`touchscreen-swapped-x-y`) |
| Comments                  | See below. |

### Extraction

The vendor ships the firmware as a `GSL_TS_CFG.h`-style header next to the driver:

    ZC_A101H_3692_P_X64_kvpg1096_200706_Lq.h

`ZC_A101H` matches the mainboard (`/sys/class/dmi/id/board_name` = `A101`), `3692` is
the controller model, `200706` is the build date (2020-07-06).

Converted with:

    tools/untscfg ZC_A101H_3692_P_X64_kvpg1096_200706_Lq.h firmware.fw

The result is 42240 bytes and works with the in-kernel `silead_ts` driver when copied
to `/lib/firmware/silead/mssl1680.fw`.

### Kernel parameters

`dmesg` reports `Silead chip ID: 0x80360000`. There is no DMI quirk for this model in
`touchscreen_dmi.c`, so the axis parameters have to be supplied manually. Tested and
working on Linux 7.1.6 (Fedora 44):

    i2c_touchscreen_props=MSSL1680:touchscreen-min-x=2:touchscreen-min-y=15:touchscreen-size-x=1729:touchscreen-size-y=1149:touchscreen-swapped-x-y:touchscreen-inverted-x

The min/max values were measured with `evtest`, sweeping a finger slowly from bezel to
bezel across the middle of the screen in both directions; both axes saturate cleanly at
the values above.

### Note on wrong firmware

Before the correct firmware was found, a firmware taken from a generic
"Silead FORCED 10x64 20.3.19.235" DriverPack bundle was installed. With that firmware
the raw X axis was non-monotonic: during a single slow left-to-right sweep the reported
`ABS_MT_POSITION_X` rose to ~1980, then the controller dropped the contact and started a
new tracking ID at ~918 and counted down. The Y axis was unaffected. This matches the
"big jumps or holes in the range" symptom described in the main README, and no
calibration matrix or axis range can compensate for it.
