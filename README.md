# gsl-firmware

This repository contains firmware images for the Silead
touchscreen controllers in various tablet (and other) devices.

There is also a number of conversion tools here that help with
extraction and preparation of firmware images.

The firmware files were extracted from Android and Windows device
drivers, as published by device manufacturers. They are intended
for people who prefer to replace the shipped operating
system with a generic Linux distribution such as Debian or Ubuntu.

The files may be covered by proprietary licenses or copyright.
Please consult the manufacturer's website or device documentation
for more information.

In contrast, everything in the tools directory is published under
the GNU General Public license v2, as laid out in
[tools/LICENSE](tools/LICENSE). See [tools/AUTHORS.md](tools/AUTHORS.md)
for copyright information.


## Device list

| Manufacturer  | Device                          | Tested  | Firmware                                                       |
|---------------|---------------------------------|---------|----------------------------------------------------------------|
| Chuwi         | hi8                             | yes     | [firmware/chuwi/hi8](firmware/chuwi/hi8)                       |
| Chuwi         | vi8                             | no      | [firmware/chuwi/vi8](firmware/chuwi/vi8)                       |
| Chuwi         | vi10                            | yes     | [firmware/chuwi/vi10](firmware/chuwi/vi10)                     |
| Chuwi         | Hi10 Air                        | yes     | [firmware/chuwi/hi10_air](firmware/chuwi/hi10_air)             |
| Chuwi         | Hi10 Pro                        | yes     | [firmware/chuwi/hi10_pro](firmware/chuwi/hi10_pro)             |
| Chuwi         | Hi10 Pro new (z8350, 20161209)  | yes     | [firmware/chuwi/hi10_pro-z8350](firmware/chuwi/hi10_pro-z8350) |
| Chuwi         | Hi10 Plus                       | yes     | [firmware/chuwi/hi10_plus](firmware/chuwi/hi10_plus)           |
| Chuwi         | HiBook                          | yes     | [firmware/chuwi/hibook](firmware/chuwi/hibook)                 |
| Chuwi         | SurBook mini                    | yes     | [firmware/chuwi/surbook_mini](firmware/chuwi/surbook_mini)     |
| Chuwi         | vx8 3G 32GB                     | no      | [firmware/chuwi/vx8_3g_32GB](firmware/chuwi/vx8_3g_32GB)       |
| EastRising	| ER-TPC050-1                     | yes     | [firmware/eastrising/er-tpc050-1](firmware/eastrising/er-tpc050-1)|
| Trekstor      | SurfTab wintron 7.0             | yes     | [firmware/trekstor/surftab7old](firmware/trekstor/surftab7old) |
| Trekstor      | SurfTab wintron 7.0 (ST70416-6) | yes     | [firmware/trekstor/surftab7new](firmware/trekstor/surftab7new) |
| Trekstor      | SurfTab twin 10.1 (ST10432-8)   | yes     | [firmware/trekstor/surftab-twin-10.1-ST10432-8](firmware/trekstor/surftab-twin-10.1-ST10432-8)|
| Trekstor      | Primebook C13                   | yes     | [firmware/trekstor/primebook-c13/](firmware/trekstor/primebook-c13/)|
| Trekstor      | Primetab T13B                   | no      | [firmware/trekstor/primetab-t13b/](firmware/trekstor/primetab-t13b/)|
| Utok          | i800                            | yes     | [firmware/utok/i800](firmware/utok/i800)                       |
| RCA           | Cambio W101 V2 10.1" tablet     | yes     | [firmware/rca/w101v2](firmware/rca/w101v2)                     |
| Onda          | V820w 16G                       | yes     | [firmware/onda/v820w_16g](firmware/onda/v820w_16g)             |
| Onda          | V820w 32G                       | yes     | [firmware/onda/v820w_32g](firmware/onda/v820w_32g)             |
| Onda          | V891w                           | no      | [firmware/onda/v891w](firmware/onda/v891w)                     |
| Onda          | oBook 20 Plus                   | yes     | [firmware/onda/obook_20_plus](firmware/onda/obook_20_plus)     |
| EduGear       | XR2N1                           | yes     | [firmware/edugear/xr2n1](firmware/edugear/xr2n1)               |
| Cube          | i10                             | yes     | [firmware/cube/i10](firmware/cube/i10)                         |
| Cube          | KNote (i1101)                   | yes     | [firmware/cube/i1101](firmware/cube/i1101)                     |
| jumper        | EZpad mini3                     | yes     | [firmware/jumper/EZpad_mini3](firmware/jumper/EZpad_mini3)     |
| jumper        | EZpad 5SE                       | no      | [firmware/jumper/EZpad_5SE](firmware/jumper/EZpad_5SE)         |
| jumper        | EZpad 6                         | yes     | [firmware/jumper/EZpad_6](firmware/jumper/EZpad_6)             |
| jumper        | EZpad 6(S) Pro                  | yes     | [firmware/jumper/EZpad_6_pro](firmware/jumper/EZpad_6_pro)     |
| jumper        | EZpad 6(S) Pro b                | yes     | [firmware/jumper/EZpad_6_pro_b](firmware/jumper/EZpad_6_pro_b) |
| 4Good         | T803i                           | no      | [firmware/4good/t803i](firmware/4good/t803i)                   |
| Voyo          | VBOOK A1                        | yes     | [firmware/voyo/at13](firmware/voyo/at13)                       |
| Voyo          | VBOOK V3Pro                     | no      | [firmware/voyo/vbook_v3pro](firmware/voyo/vbook_v3pro)         |
| DEXP          | Ursus 7W Rev.1                  | yes     | [firmware/dexp/ursus7w-rev1](firmware/dexp/ursus7w-rev1)       |
| DEXP          | Ursus 7W Rev.2                  | yes     | [firmware/dexp/ursus7w-rev1](firmware/dexp/ursus7w-rev2)       |
| Teclast       | X3 Plus                         | yes     | [firmware/teclast/x3_plus](firmware/teclast/x3_plus)           |
| Teclast       | X5 Pro                          | yes     | [firmware/teclast/x5_pro](firmware/teclast/x5_pro)             |
| Proworx       | MX049                           | yes     | [firmware/proworx/mx049](firmware/proworx/mx049)               |
| Insignia      | Flex 11                         | yes     | [firmware/insignia/flex11](firmware/insignia/flex11)           |
| iLife			| ZedBook 2			  			  | yes	    | [firmware/ilife/zedbook2](firmware/ilife/zedbook2)           |


## Adding new firmware

To request new firmware to be added to the list, please send a
pull request with the following structure:

- `firmware/<manufacturer>/<device>/<unpacked driver>/`
  The original Windows or Android drivers or firmware files
  (SileadTouch.sys, SileadTouch.fw, gslx68x_ts.ko, ...)
- `firmware/<manufacturer>/<device>/README.md`
  A readme containing all (known) device information plus
  download links to the original Windows/Android driver or
  firmware. See [firmware/README.md.template](firmware/README.md.template)
  for an example with explanations.
- `firmware/<manufacturer>/<device>/silead.fw`
  (optional) The extracted firmware, as created by fw_extractor,
  untscfg, unscramble or scanwindrv. (see below)
- `firmware/linux/gsl1680-<manufacturer>-<device>.fw`
  (optional) The same file as silead.fw, for use with the silead.ko driver
  that is part of the Linux kernel. (see below)
- `firmware/<manufacturer>/<device>/silead_ts.fw`
  (optional) Firmware created by fwtool using correct parameters. (see below)
  For use with the alternative gslx680_ts_acpi driver.
- `README.md`
  A patch to this readme file that adds an entry to the device list.

The "Tested" field should only be "Yes" if you have confirmed that
the converted firmware works with silead_ts.ko or gslx680_ts_acpi.ko
and the touchscreen responds properly, i.e. the device parameters
are good.


## Extracting firmware

Original vendor firmware comes in various formats, depending
on the operating system and driver version.


### Android driver

The official Android driver can be found under this path (or similar):
/system/vendor/modules/gslx680.ko
Copy this file to an SD card, use a file transfer utility, or use `adb pull`.

On your build machine, use the script 'firmware/fw_extractor' from the command
line to extract the firmware from the driver:

    tools/fw_extractor my_android_gslx680.ko

The Android driver may well contain multiple firmwares to support
different hardware configurations with the same driver. The extractor
will spit those out as seperate files. We currently have no way of
knowing which is right for your device. You will have to try each.
Sometimes, the file names will give a clue, like panel size, product
name, resolution or chip name. Test the matching ones first.


### Windows driver

If you have a Windows driver instead, the firmware either comes in
the form of a file named GSL_TS_CFG.h (or similar) or SileadTouch.fw.
The latter is just a scrambled version of GSL_TS_CFG.h and can be easily
restored by XORing every byte with 0x88.

To convert GSL_TS_CFG.h to binary, use:

    tools/untscfg GSL_TS_CFG.h firmware.fw

For a scrambled SileadTouch.fw, use:

    tools/unscramble SileadTouch.fw firmware.fw

If your vendor only supplied a Windows driver and no separate
firmware, you can still extract the firmware blob that is contained
inside.

Use the scanwindrv script to extract it:

    tools/scanwindrv SileadTouch.sys

As with the Android driver, this may produce multiple firmware files named
firmware_00.fw, firmware_01.fw, etc. - you have to test them to find the
correct one for your device.


## Usage

There are currently two open-source drivers available for Silead chips:
silead_ts and gslx680_ts_acpi.

silead_ts ships with the Linux kernel since version 4.8 and is the recommended
driver. gslx680_ts_acpi can still be useful for initial testing or if silead_ts
does not work for you.

When Silead touchscreen support was added to ACPI (PC) platforms, the
integrator did not anticipate any uses cases outside the device vendor's
ecosystems. For this reason, it is required to pass additional
device parameters to the driver that are neither contained in the firmware
nor in the ACPI DSDT. silead_ts handles this in the kernel, using an
ACPI override/quirk table, while gslx680_ts_acpi expects firmware in a
different format that contains this information.

Since silead_ts requires a kernel modification (and thus a reboot or kexec)
whenever parameters are changed, testing is easier with gslx680_ts_acpi.
There, parameters can be changed in the firmware, then updated by unloading and
reloading the kernel module.

After the device parameters are known, you should add support to silead_ts
and submit a kernel patch to the
[linux-input mailing list](http://vger.kernel.org/vger-lists.html#linux-input).


### silead_ts

First, decide on a unique name for the firmware. The recommended format is:
`gsl<chip name>-<manufacturer>-<device>.fw`
If you don't know the chip name, use gsl1680. Manufacturer and device name
should be shortened to make the name readable, but still sufficiently unique.

Fetch the current Linux source code and open `drivers/platform/x86/silead_dmi.c`
in a text editor. Since Linux kernel 4.19, this file is called
`drivers/platform/x86/touchscreen_dmi.c`.

Supposing you named your firmware `gsl1680-mycompany-mytablet.fw` and the
touchscreen has a resolution of 128x128 points, add a new section to the file:

```c
static const struct property_entry mycompany_mytablet_props[] = {
	PROPERTY_ENTRY_U32("touchscreen-size-x", 128),
	PROPERTY_ENTRY_U32("touchscreen-size-y", 128),
	PROPERTY_ENTRY_STRING("firmware-name", "gsl1680-mycompany_mytablet.fw"),
	PROPERTY_ENTRY_U32("silead,max-fingers", 10),
	{ }
};

static const struct silead_ts_dmi_data mycompany_mytablet_data = {
	.acpi_name	= "MSSL1680:00",
	.properties	= mycompany_mytablet_props,
};
```

In some rare cases, the `acpi_name` may be different.

Further below, there is a list named `silead_ts_dmi_table`:
```c
static const struct dmi_system_id silead_ts_dmi_table[] = {
```

Add a new entry to this list:
```c
	{
		/* Teclast X3 Plus */
		.driver_data = (void *)&mycompany_mytablet_data,
		.matches = {
			DMI_MATCH(DMI_SYS_VENDOR, "MyCompany"),
			DMI_MATCH(DMI_PRODUCT_NAME, "MyTablet"),
			DMI_MATCH(DMI_BOARD_NAME, "Generic Board"),
		},
	},
```

The exact values and suitable matching tags depend on the particular device.
You can find them with the help of `dmidecode`.
Look for the section called "System Information".

[See here for an example patch](https://patchwork.kernel.org/patch/10179961/).

After adding the override tables, you have to recompile your kernel,
as the DMI overrides are outside the context of the driver. Install and reboot.
You may also try reloading the kernel using `kexec`, but this can lead to an
unstable system and is not recommended.


### gslx680_ts_acpi

The [gslx680-acpi](https://github.com/onitake/gslx680-acpi) driver
requires firmware in a special compact format.

Use [firmware/fwtool](firmware/fwtool) to convert regular firmware
into this format. The tool will also store device parameters (such as
such as panel width and height, tracking support, etc.) inside the firmware.

The file format is described in 'firmware/Firmware/Silead.pm'.
Use perldoc or a text editor to read.

Example usage:

    tools/fwtool -c firmware.fw -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

This will read legacy firmware.fw, convert it into silead_ts.fw in
the new format, then set the controller type to GSL1680, the panel
width to 940 dots, the height to 750 dots and the maximum number
of touch points to 10. The README for each firmware should give
you information on the information to put there.

It is also possible to convert the scrambled SileadTouch.fw from a
Windows driver directly:

    tools/fwtool -c SileadTouch.fw -3 -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

And for an unscrambled GSL_TS_CFG.h, use:

    tools/fwtool -c TS_CFG.h -2 -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

You might still need to calibrate the touchscreen later, if
the numbers are unknown or not accurate. Note that the maximum
width and height are 4095. The driver is currently hardcoded
to a touch point limit of 10 fingers, so specifying more than
that will not work.

If your touchscreen controller does not support finger tracking
(this is crucial for proper mouse emulation) or axes seem to be
mirrored or swapped, you can modify the firmware to
enable corresponding features in the driver.

For example, this enables software finger tracking and mirrors
the horizontal axis:

    tools/fwtool -s -f track,xflip silead_ts.fw

The -f option may also be specified directly when converting
a firmware image.

The resulting firmware should be named silead_ts.fw and
installed into /lib/firmware so the driver can find it.

To convert a firmware image back into legacy format, use:

    tools/fwtool -x gslxxxx.fw silead_ts.fw

Note that memory page order is not preserved. This should not
pose a problem for the controller, however.
