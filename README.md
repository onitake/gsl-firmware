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
| Archos        | 101 Cesium Educ                 | yes     | [firmware/archos/101_cesium_educ](firmware/archos/101_cesium_educ)|
| BUSH          | Bush Windows tablet             | yes     | [firmware/bush/bush_windows_tablet](firmware/bush/bush_windows_tablet)|
| Chuwi         | hi8                             | yes     | [firmware/chuwi/hi8](firmware/chuwi/hi8)                       |
| Chuwi         | Hi8 Air                         | yes     | [firmware/chuwi/hi8_air](firmware/chuwi/hi8_air)               |
| Chuwi         | vi8                             | no      | [firmware/chuwi/vi8](firmware/chuwi/vi8)                       |
| Chuwi         | vi10                            | yes     | [firmware/chuwi/vi10](firmware/chuwi/vi10)                     |
| Chuwi         | Hi10 Air                        | yes     | [firmware/chuwi/hi10_air](firmware/chuwi/hi10_air)             |
| Chuwi         | Hi10 Pro                        | yes     | [firmware/chuwi/hi10_pro](firmware/chuwi/hi10_pro)             |
| Chuwi         | Hi10 Pro new (z8350, 20161209)  | yes     | [firmware/chuwi/hi10_pro-z8350](firmware/chuwi/hi10_pro-z8350) |
| Chuwi         | Hi10 Plus                       | yes     | [firmware/chuwi/hi10_plus](firmware/chuwi/hi10_plus)           |
| Chuwi         | HiBook                          | yes     | [firmware/chuwi/hibook](firmware/chuwi/hibook)                 |
| Chuwi         | SurBook mini                    | yes     | [firmware/chuwi/surbook_mini](firmware/chuwi/surbook_mini)     |
| Chuwi         | vx8 3G 32GB                     | no      | [firmware/chuwi/vx8_3g_32GB](firmware/chuwi/vx8_3g_32GB)       |
| Nuvision      | NES11                           | yes     | [firmware/nuvision/nes11](firmware/nuvision/nes11)             |
| EastRising	| ER-TPC050-1                     | yes     | [firmware/eastrising/er-tpc050-1](firmware/eastrising/er-tpc050-1)|
| Trekstor      | SurfTab wintron 7.0             | yes     | [firmware/trekstor/surftab7old](firmware/trekstor/surftab7old) |
| Trekstor      | SurfTab wintron 7.0 (ST70416-6) | yes     | [firmware/trekstor/surftab7new](firmware/trekstor/surftab7new) |
| Trekstor      | SurfTab twin 10.1 (ST10432-8)   | yes     | [firmware/trekstor/surftab-twin-10.1-ST10432-8](firmware/trekstor/surftab-twin-10.1-ST10432-8)|
| Trekstor      | Primebook C13                   | yes     | [firmware/trekstor/primebook-c13/](firmware/trekstor/primebook-c13/)|
| Trekstor      | Primetab T13B                   | no      | [firmware/trekstor/primetab-t13b/](firmware/trekstor/primetab-t13b/)|
| Utok          | i800                            | yes     | [firmware/utok/i800](firmware/utok/i800)                       |
| RCA           | Cambio W101 V2 10.1" tablet     | yes     | [firmware/rca/w101v2](firmware/rca/w101v2)                     |
| RCA           | Cambio W122SC24T2 12.2 tablet   | no      | [firmware/rca/w122sc24t2](firmware/rca/w122sc24t2)             |
| Odys          | Fusion Win 12 - 2in1            | yes     | [firmware/odys/fusionwin12](firmware/odys/fusionwin12)         |
| Onda          | V820w 16G                       | yes     | [firmware/onda/v820w_16g](firmware/onda/v820w_16g)             |
| Onda          | V820w 32G                       | yes     | [firmware/onda/v820w_32g](firmware/onda/v820w_32g)             |
| Onda          | V891 v5                         | yes     | [firmware/onda/v891_v5](firmware/onda/v891_v5)                 |
| Onda          | V891w                           | no      | [firmware/onda/v891w](firmware/onda/v891w)                     |
| Onda          | oBook 20 Plus                   | yes     | [firmware/onda/obook_20_plus](firmware/onda/obook_20_plus)     |
| EduGear       | XR2N1                           | yes     | [firmware/edugear/xr2n1](firmware/edugear/xr2n1)               |
| Cube          | i10                             | yes     | [firmware/cube/i10](firmware/cube/i10)                         |
| Cube          | KNote (i1101)                   | yes     | [firmware/cube/i1101](firmware/cube/i1101)                     |
| Cube          | KNote Go(i1101S)                | yes     | [firmware/cube/i1101S](firmware/cube/i1101S)                   |
| jumper        | EZpad mini3                     | yes     | [firmware/jumper/EZpad_mini3](firmware/jumper/EZpad_mini3)     |
| jumper        | EZpad 5SE                       | no      | [firmware/jumper/EZpad_5SE](firmware/jumper/EZpad_5SE)         |
| jumper        | EZpad 6                         | yes     | [firmware/jumper/EZpad_6](firmware/jumper/EZpad_6)             |
| jumper        | EZpad 6(S) Pro                  | yes     | [firmware/jumper/EZpad_6_pro](firmware/jumper/EZpad_6_pro)     |
| jumper        | EZpad 6(S) Pro b                | yes     | [firmware/jumper/EZpad_6_pro_b](firmware/jumper/EZpad_6_pro_b) |
| jumper        | EZpad 8 Pro                     | yes     | [firmware/jumper/EZpad_8_pro](firmware/jumper/EZpad_8_pro)     |
| 4Good         | T803i                           | no      | [firmware/4good/t803i](firmware/4good/t803i)                   |
| Voyo          | VBOOK A1                        | yes     | [firmware/voyo/at13](firmware/voyo/at13)                       |
| Voyo          | VBOOK V3Pro                     | no      | [firmware/voyo/vbook_v3pro](firmware/voyo/vbook_v3pro)         |
| DEXP          | Ursus 7W Rev.1                  | yes     | [firmware/dexp/ursus7w-rev1](firmware/dexp/ursus7w-rev1)       |
| DEXP          | Ursus 7W Rev.2                  | yes     | [firmware/dexp/ursus7w-rev1](firmware/dexp/ursus7w-rev2)       |
| DEXP          | Ursus KX210i                    | yes     | [firmware/dexp/ursus-kx210i](firmware/dexp/ursus-kx210i)       |
| Teclast       | X3 Plus                         | yes     | [firmware/teclast/x3_plus](firmware/teclast/x3_plus)           |
| Teclast       | X5 Pro                          | yes     | [firmware/teclast/x5_pro](firmware/teclast/x5_pro)             |
| Proworx       | MX049                           | yes     | [firmware/proworx/mx049](firmware/proworx/mx049)               |
| Insignia      | Flex 8                          | yes     | [firmware/insignia/flex8](firmware/insignia/flex8)             |
| Insignia      | Flex 11                         | yes     | [firmware/insignia/flex11](firmware/insignia/flex11)           |
| iLife         | ZedBook 2                       | yes     | [firmware/ilife/zedbook2](firmware/ilife/zedbook2)             |
| IRBIS         | tw48                            | yes     | [firmware/irbis/tw48/](firmware/irbis/tw48)                    |
| IRBIS         | TW39                            | yes (doesn't work)     | [firmware/irbis/TW39](firmware/irbis/TW39)                     |
| Myria         | MY8307                          | yes     | [firmware/myria/my8307](firmware/myria/my8307)                 |
| Schneider     | SCT101CTM                       | yes     | [firmware/schneider/sct101ctm](firmware/schneider/sct101ctm)   |
| techBite      | Arc 11.6                        | yes     | [firmware/techbite/arc_11_6](firmware/techbite/arc_11_6)       |
| Vinga         | Twizzle J116                    | yes     | [firmware/vinga/twizzle_j116](firmware/vinga/twizzle_j116)     |
| Multilaser    | M11W                            | yes     | [firmware/multilaser/m11w](firmware/multilaser/m11w)           |
| RWC           | NANOTE P8                       | yes     | [firmware/rwc/nanote-p8](firmware/rwc/nanote-p8)               |
| RWC           | NANOTE NEXT                     | yes     | [firmware/rwc/nanote-next](firmware/rwc/nanote-next)           |
| viglen        | connect10"                      | yes     | [firmware/vliglen/connect10](firmware/viglen/connect10)        |
| Saphir        | WinPad 10.1 FHD                 | no      | [firmware/saphir/winpad_10_1](firmware/saphir/winpad_10_1)     |
| Hykker        | Hello                           | yes     | [firmware/hykker/hello]( firmware/hykker/hello)                |
| Fusion5       | FWIN232PLUS                     | yes     | [firmware/fusion5/fwin232plus](firmware/fusion5/fwin232plus)   |
| Fusion5       | T60                             | yes     | [firmware/fusion5/T60](firmware/fusion5/T60)                   |
| CSL           | Panther Tab HD                  | yes     | [firmware/csl/panther-tab-hd](firmware/csl/panther-tab-hd)     |
| Positivo      | C4128B                          | yes     | [firmware/positivo/c4128b](firmware/positivo/c4128b)           |
| Globalspace   | SoLT IVW 11.6"                  | yes     | [firmware/globalspace/solt-ivw-11.6](firmware/globalspace/solt-ivw-11.6) |
| SARY          | Tab 3                           | yes     | [firmware/sary/tab-3](firmware/sary/tab-3) |


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
  (optional) The extracted regular firmware, as created by fw_extractor,
  untscfg, unscramble or scanwindrv (see below).
- `firmware/linux/gsl1680-<manufacturer>-<device>.fw`
  (optional) The same file as silead.fw, for use with the silead.ko driver
  that is part of the Linux kernel (see below).
  If you add this please also add an entry for this to `firmware/linux/README.md`.
- `firmware/<manufacturer>/<device>/silead_ts.fw`
  (optional) Firmware in gslx680_ts_acpi format created by fwtool using correct
  parameters (see below).
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
nor in the ACPI DSDT. silead_ts handles this in the kernel, using a DMI
quirk table. gslx680_ts_acpi expects firmware in its own format which contains
this information.

silead_ts allows passing the device parameters on the kernel commandline
to test on devices which are not yet in the DMI quirk table. This is supported
in kernel 6.10 and later, for older kernels the kernel needs to be patched
and rebuilt [(see e.g. kernel-recompile-debian.md)](kernel-recompile-debian.md)
to test parameter changes. For older kernels testing is easier with
gslx680_ts_acpi.


### Determining the touchscreen's parameters

#### 1. Extract the firmware from the factory OS

Before even installing Linux make sure you have extracted the firmware from
the original factory OS as described above. Silead firmwares are model specific,
so if the factory OS is wiped before retrieving the firmware then things will
not work. In this case you may still be able to download a factory OS image from
the device vendor's website, but not all vendors offer this.

#### 2. Copying the firmware to /lib/firmare

silead_ts, which should already be enabled in your Linux distribution's kernel,
will print an error message about not being able to find the firmware in dmesg.
To get this error message run `sudo dmesg | grep silead`.

Copy the extracted firmware under `/lib/firmware/silead/` using the name
given in the error message. Usually it should be copied to
`/lib/firmware/silead/mssl1680.fw`. After copying run
`sudo rmmod silead; sudo modprobe silead` and then rerun
`sudo dmesg | grep silead` this should now show the touchscreen getting
registered in the form of a line containing `input: silead_ts as ...`.

#### 3. Testing you have the right firmware

Install evtest or evemu-record (evemu), although all examples below use
`evtest` using either the `evtest` or `evemu-record` command should work.

Run `sudo evtest`. This gives a list of `/dev/input/event#` devices.
Replace `#` in the commands below with the number of the `/dev/input/event#`
node for the `silead_ts` input device.

Run `sudo evtest /dev/input/event# | grep ABS_X` and then slowly run
your finger over the screen from the left edge of the screen to
the right edge along the middle line of the display and press Ctrl + C
to terminate evtest when done. This should print slowly increasing or
decreasing ABS_X values.

If instead the ABS_X values stay approx. the same then your X and Y axis are
swapped. Redo the test moving your finger over the screen from the top edge
of the screen to the bottom edge along the middle line of the display instead.

If there are big jumps or holes in the range, retry making sure your finger
makes proper contact with the screen. If that doesn't help, then you have
the wrong firmware.

After verifying the X axis works well repeat the process for ABS_Y and
verify that the Y axis works well too.

#### 4. Determine the min and max values of the axis

Run `sudo evtest /dev/input/event# | grep ABS_X` and for the same edges
as used for ABS_X during step 3 first place your finger on the display
near the edge and then *slowly* move it over the edge to the bezel,
notice the lowest or highest value reported for ABS_X while doing this.
Repeat this about 5 times to make sure you really have found
the lowest / highest value the axis reports.

Write down the lowest ABS_X value observed as x-min and the highest
observed value (on the other edge) as x-max.

Repeat this for ABS_Y and write down y-min and y-max.

#### 5. Testing the parameters

When running kernel 6.10 or later you can now test the found min/max
values on the kernel commandline.

This requires the ACPI Hardware ID (HID) for the touchscreen. Run
`ls -d /sys/bus/i2c/devices/i2c-MSSL*`, this should output a single line
ending in e.g. `i2c-MSSL1680:00`. The ACPI HID of the touchscreen is the bit
after the `i2c-` and before the `:00` so `MSSL1680` in this case.

This HID is the first argument for the `i2c_touchscreen_props` kernel
commandline argument. To pass the found min/max values the following syntax
is used:

```
i2c_touchscreen_props=<ACPI_HW_ID>:touchscreen-min-x=<x-min>:touchscreen-min-y=<y-min>:touchscreen-size-x=<x-max + 1>:touchscreen-size-y=<y-max + 1>
```

So if for example in step 4. you have found values of x-min=8, y-min=8,
x-max=1919, y-max=1079 then the kernel commandline argument to pass would be:

```
i2c_touchscreen_props=MSSL1680:touchscreen-min-x=8:touchscreen-min-y=8:touchscreen-size-x=1920:touchscreen-size-y=1080
```

Edit your kernel configuration, e.g. `/boot/loader/entries/<current-kernel>.conf`,
add this to your kernel commandline then reboot to test. After reboot run
`sudo cat /proc/cmdline` to make sure that `i2c_touchscreen_props=...` is there
and is correct.

With some luck your touchscreen will now work right away. Sometimes the X/Y axis
need be to swapped or inverted. Note swapping will automatically swap the size
and min parameters, so those must not be swapped manually. So lets say you need
to swap and invert the Y axis, you would then extend `i2c_touchscreen_props=`
by adding `:touchscreen-swapped-x-y:touchscreen-inverted-y` after the size-x
parameter, so you would get (abbreviated):

```
i2c_touchscreen_props=MSSL1680:touchscreen-min-x=...:touchscreen-size-y=1080:touchscreen-swapped-x-y:touchscreen-inverted-y
```

If one of the bezels around the display has a Windows logo chances are this
can operate as a capacitive home-button. To test this add `:silead,home-button`
after the existing `i2c_touchscreen_props=` parameters. After rebooting with
`:silead,home-button` added to the parameters run `sudo evtest /dev/input/event#`
and press the Windows logo if this reports `KEY_LEFTMETA` events then it works.

If this does not work drop `silead,home-button` from your parameters since this
may cause spurious `KEY_LEFTMETA` events when it is not supported.

The linux touchscreen framework also supports some other properties that
may be useful, see [touchscreen.yaml](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml)
for a full list.

#### 6. Submit the parameters to gsl-firmware

At this point everything should work. Please submit a pull request
as described under "Adding new firmware" above. Please include
a copy of the working firmware as
`firmware/linux/silead/gsl<chip name>-<manufacturer>-<device>.fw`
in this pull request. If you don't know the chip name, use gsl1680.
Manufacturer and device name should be shortened to make the name readable,
but still sufficiently unique.

Also update firmware/linux/README.md adding an entry for the new firmware.

In the pull request text please provide the working `i2c_touchscreen_props=`
parameters and the output of running `grep . /sys/class/dmi/id/* 2> /dev/null`
as a normal user. Then the gsl-firmware maintainers can help with creating
a DMI quirk for your device model to make future kernels automatically apply
the right parameters.

You can also create a touchscreen_dmi.c patch yourself if you want, see below.


### Patching touchscreen_dmi.c

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
You can find them by running `grep . /sys/class/dmi/id/* 2> /dev/null`.

[See here for an example patch](https://patchwork.kernel.org/project/platform-driver-x86/patch/20180608214558.30717-3-hdegoede@redhat.com/).

After adding the override tables, you have to recompile your kernel,
as the DMI overrides are outside the context of the driver. Install and reboot.
You may also try reloading the kernel using `kexec`, but this can lead to an
unstable system and is not recommended.

Once the parameters have been tested successfully, it's recommended that
you submit the patch for Linux kernel inclusion.
See the [Submitting patches](https://www.kernel.org/doc/html/latest/process/submitting-patches.html)
documentation on how to do this. Please send it to the
[linux-input](http://vger.kernel.org/vger-lists.html#linux-input) and
[platform-driver-x86](http://vger.kernel.org/vger-lists.html#platform-driver-x86)
mailing lists.


### gslx680_ts_acpi

The [gslx680-acpi](https://github.com/onitake/gslx680-acpi) driver
requires firmware in a special compact format.

Use [tools/fwtool](tools/fwtool) to convert regular firmware
into this format. The tool will also store device parameters (such as
such as panel width and height, tracking support, etc.) inside the firmware.

The file format is described in 'firmware/Firmware/Silead.pm'.
Use perldoc or a text editor to read.

Example usage:

    tools/fwtool -c firmware.fw -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

This will read the regular `firmware.fw` file and convert it into `silead_ts.fw`
in the gslx680_ts_acpi format, then set the controller type to GSL1680,
the panel width to 940 dots, the height to 750 dots and the maximum number
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

To convert a firmware image back into regular format, use:

    tools/fwtool -x gslxxxx.fw silead_ts.fw

Note that memory page order is not preserved. This should not
pose a problem for the controller, however.
