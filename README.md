gsl-firmware
============

This repsitory contains firmware images for the Silead
touchscreen controllers in various tablet (and other) devices.

There is also a number of conversion tools here that help with
extraction and preparation of firmware images.

The firmware files were extracted from Android and Windows device
drivers, as published by device manufacturers. They are meant
to be used by people who prefer to replace the operating system
intended by the manufacturer, for example a generic Linux
distribution such as Debian or Ubuntu.

The files may be covered by proprietary licenses or copyright.

Conversely, everything in the tools directory is published under
the GNU General Public license v2, as laid out in
[tools/LICENSE](tools/LICENSE).

If you would like to submit firmware for a new device not
mentioned here, please open an issue, or submit a push request
containing the original driver, a converted/extracted version
(check the [tools](tools) directory for some conversion tools),
and a short README.md describing the firmware source and the
characteristics of the touch panel, if you know them. You should
also include a patch for the hardware matrix below.


Firmware formats
----------------

Original vendor firmware comes in various formats, depending
on the operating system and driver version.

The Android driver can be found under this path (or similar):
/system/vendor/modules/gslx680.ko
Copy this to a SD card or use a GNU/Linux chroot to scp it over, or use
adb pull.
On your build machine, on the command line, use the script
'firmware/fw_extractor' to extract the firmware to its own file.

    tools/fw_extractor my_android_gslx680.ko firmware.fw

The Android driver may well contain multiple firmwares to support
different hardware configurations with the same driver. The extractor
will spit those out as seperate files. We currently have no way of
knowing which is right for your device. You will have to try each.

If you have a Windows driver instead, the firmware either comes in
the form of a file named GSL_TS_CFG.h or SileadTouch.fw. The latter
is just a scrambled version of GSL_TS_CFG.h and can be easily
restored by XORing every byte with 0x88.

To convert GSL_TS_CFG.h into a binary firmware, use:

    tools/untscfg GSL_TS_CFG.h firmware.fw

And for a scrambled SileadTouch.fw:

    tools/unscramble SileadTouch.fw firmware.fw

If your vendor only supplied a Windows driver and no separate
firmware, you can still extract the firmware blob that is contained
inside. This requires some manual work in a hex editor, however.

Search for the hex sequence F0 00 00 00, followed by a 32 bit
number of the form xx 00 00 00 (i.e. an 8 bit value in a little
endian 32 bit word) and lots of yy 00 00 00 zz zz zz zz word pairs
(where yy is counting from 00 to 7C and zz is any hex code).
There are normally several blocks of data with the same pattern that
follow. Copy all of them into a new file and call it firmware.fw.
This should be the firmware image for your device.


gslx680-acpi
------------

The [gslx680-acpi](https://github.com/onitake/gslx680-acpi) driver
requires firmware in a special, more compact format.

Use [firmware/fwtool](firmware/fwtool) to convert regular firmware
into this format. The tool will also sets some non-generic
device parameters, such as panel width and height, tracking support, etc.

The file format is described in 'firmware/Firmware/Silead.pm'.
Use perldoc or a text editor to read.

Example usage:

    ./fwtool -c firmware.fw -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

This will read legacy firmware.fw, convert it into silead_ts.fw in
the new format, then set the controller type to GSL1680, the panel
width to 940 dots, the height to 750 dots and the maximum number
of touch points to 10. The README for each firmware should give
you information on the information to put there.

It is also possible to convert the scrambled SileadTouch.fw from a
Windows driver directly:

    ./fwtool -c SileadTouch.fw -3 -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

And for an unscrambled GSL_TS_CFG.h, use:

    ./fwtool -c TS_CFG.h -2 -m 1680 -w 940 -h 750 -t 10 silead_ts.fw

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

    ./fwtool -s -f track,xflip silead_ts.fw

The -f option may also be specified directly when converting
a firmware image.

The resulting firmware should be named silead_ts.fw and
installed into /lib/firmware so the driver can find it.

To convert a firmware image back into legacy format, use:

    ./fwtool -x gslxxxx.fw silead_ts.fw

Note that memory page order is not preserved. This should not
pose a problem for the controller, however.


Device list
-----------

| Manufacturer  | Device                          | Tested  | Firmware                                                       |
|---------------|---------------------------------|---------|----------------------------------------------------------------|
| Chuwi         | hi8                             |  no     | [firmware/chuwi/hi8](firmware/chuwi/hi8)                       |
| Chuwi         | vi8                             |  no     | [firmware/chuwi/vi8](firmware/chuwi/vi8)                       |
| Trekstor      | SurfTab wintron 7.0             |  no     | [firmware/trekstor/surftab7old](firmware/trekstor/surftab7old) |
| Trekstor      | SurfTab wintron 7.0 (ST70416-6) |  no     | [firmware/trekstor/surftab7new](firmware/trekstor/surftab7new) |
| Utok          | i800                            | yes     | [firmware/utok/i800](firmware/utok/i800)                       |
