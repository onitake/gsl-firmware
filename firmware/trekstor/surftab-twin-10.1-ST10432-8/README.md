trekstor/surftab-twin-10.1-ST10432-8
------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Trekstor |
| Device                    | Surftab twin 10.1 (ST10432-8) |
| Website                   | [link](http://www.trekstor.de/produktsupport/product/surftab-twin-101.html) |
| Datasheet                 | [link](http://download.trekstor.de/tl_files/generatedPdf/surftab-twin-101-de.pdf) |
| Manual                    | [link](http://download.trekstor.de/tl_files/userFiles/products/surftab_twin_101/BA_STT101_V1-10-DE-150728_online.pdf) |
| Vendor driver (Windows)   | no download, just found manual and datasheet available |
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1280x800 |
| Touch panel resolution    | 1895x1275 (estimated by testing, not verified by any documents) |
| Touch controller          | Not verified by opening the device. |
| Multitouch support        | Yes (10 touch points). (Due to manual) |
| Finger tracking           | Unsure |
| Mirrored horizontally     | Yes |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | ./fwtool -c GSL_TS_CFG_THREE.h -2 -m 1680 -w 1895 -h 1275 -t 10 -f yflip silead_ts.fw |


Details:
--------
The driver used for extraction is taken from the preinstalled Windows 10 installation.

Tested with gslx680_ts_acpi with Debian kernel linux-image-4.6.0-1-amd64 (4.6.1-1).


Command to convert GSL_TS_CFG_THREE.h
-------------------------------------
    cd tools
    ./fwtool -c ../firmware/trekstor/surftab-twin-10.1-ST10432-8/Windows_System32_drivers/GSL_TS_CFG_THREE.h -2 -m 1680 -w 1895 -h 1275 -t 10 -f yflip ../firmware/trekstor/surftab-twin-10.1-ST10432-8/silead_ts.fw
    cd -


Qt5 programs not working?
-------------------------
In my tests at first taps were not recognized in Qt5 based programs like
Plasma or LXQt desktop, or SDDM login manager.

This was because following conditions were met:
- Debian included the libinput X input drivers and have currently higher priority than Evdev drivers.
  See /var/log/Xorg.0.log: Using input driver 'libinput' for 'Silead GSLx680 Touchscreen'
- Qt5 is in a version smaller than 5.6.0 installed.
- "xinput list --long 11" reports "Abs X" valuators.

But Qt5 expected "Abs MT Position X" valuators.

Other programs based on different toolkits are not affected.

Upstream Qt5 fixed this issue in following links:
- https://bugreports.qt.io/browse/QTBUG-48279
- http://code.qt.io/cgit/qt/qtbase.git/commit/src/plugins/platforms/xcb/qxcbconnection_xi2.cpp?id=462f355e4fb16cc7a1838fa2dda0f763eee58c84

Getting source for libqt5gui5_5.5.1+dfsg-17_amd64.deb, applying the above patch, rebuilding
and reinstalling the modified package solves the issue.

However hinting the X-server to use the Evdev driver would be easier (see below 99-calibration.conf).


Calibration (evdev):
--------------------
Run "xinput_calibrator". It outputs a config snippet for the X-server:

/usr/share/X11/xorg.conf.d/99-calibration.conf
    Section "InputClass"
            Identifier      "calibration"
            MatchProduct    "Silead GSLx680 Touchscreen"
            Option  "Calibration"   "40 1880 0 1270"
            Option  "SwapAxes"      "0"
            Driver "evdev"
    EndSection

For fine tuning one can also test the values first with this command:
    xinput set-int-prop 11 "Evdev Axis Calibration" 32 40 1880 0 1270


Calibration (libinput):
-----------------------
Could not find any GUI to start with calibration.

I had just following command to start:
    xinput set-float-prop 11 "libinput Calibration Matrix"  1.0   0.0  0.0       0.0 1.0    0.0       0.0 0.0 1.0
    xinput set-float-prop 11 "libinput Calibration Matrix"  1.045 0.0 -0.015     0.0 1.045 -0.015     0.0 0.0 1.0

Like described in "man 5 xorg.conf", the Option "TransformationMatrix" "a b c d e f g h i":
- "a" and "e" specify the width and height
- "c" and "f" specify the x and y offset

If you have usable values put make such a configuration:
/usr/share/X11/xorg.conf.d/99-calibration.conf
    Section "InputClass"
            Identifier      "calibration"
            MatchProduct    "Silead GSLx680 Touchscreen"
            Option  "CalibrationMatrix" "1.045 0.0 -0.015     0.0 1.045 -0.015     0.0 0.0 1.0"
            Driver "libinput"
    EndSection


Following is just for reference, if one wants to extract firmware from SileadTouch.sys:
---------------------------------------------------------------------------------------


Command to find the offsets used for extraction:
------------------------------------------------
    cd firmware/trekstor/surftab-twin-10.1-ST10432-8/
    export F=Windows_System32_drivers/SileadTouch.sys
    cat $F \
        | hexdump -e '1/1  "0x%8.8_ax    "' -e '1/1  "%8._ad    "' -e '8/1 "%02X ""\n"""' \
        | grep -i -E "F0 00 00 00 02 00 00 00|7C 00 00 00 .. .. .. .." \
        | grep "F0 00 00 00 02 00 00 00" -B1 \
        ; \
    echo -- \
        ; \
    cat $F \
        | hexdump -e '1/1  "0x%8.8_ax    "' -e '1/1  "%8._ad    "' -e '8/1 "%02X ""\n"""' \
        | grep -i -E "F0 00 00 00 02 00 00 00|7C 00 00 00 .. .. .. .." \
        | tail -n2


Gives this output:
------------------
    0x00009540       38208    7C 00 00 00 00 00 00 01
    0x00009548       38216    F0 00 00 00 02 00 00 00   (start fw_1)
    --
    0x0000b010       45072    7C 00 00 00 00 00 00 00   (end fw_1)
    0x0000b818       47128    F0 00 00 00 02 00 00 00   (start fw_2)
    --
    0x000152c0       86720    7C 00 00 00 30 32 3A 32   (end fw_2)
    0x00015ac8       88776    F0 00 00 00 02 00 00 00   (start fw_3)
    --
    0x0001f570      128368    7C 00 00 00 30 32 3A 32   (end fw_3)
    0x0001fd78      130424    F0 00 00 00 02 00 00 00   (start fw_4)
    --
    0x00029b38      170808    7C 00 00 00 30 32 3A 32   (end fw_4)
    0x0002b468      177256    7C 00 00 00 01 30 07 30


Extract the firmware.fw files:
------------------------------
    dd bs=1 if=$F of=firmware.fw_1 skip=38216  count=$(( 45072 -  38216 + 8))
    dd bs=1 if=$F of=firmware.fw_2 skip=47128  count=$(( 86720 -  47128 + 8))
    dd bs=1 if=$F of=firmware.fw_3 skip=88776  count=$((128368 -  88776 + 8))
    dd bs=1 if=$F of=firmware.fw_4 skip=130424 count=$((170808 - 130424 + 8))
    unset F
    cd -

| file          | comments                                  |
|---------------|-------------------------------------------|
| firmware.fw_1 | Not tested, much smaller then the others. |
| firmware.fw_2 | Reacts to input, mouse pointer jumpy.     |
| firmware.fw_3 | Reacts to input, mouse pointer jumpy.     |
| firmware.fw_4 | Works good.                               |


Convert the firmware.fw_4:
--------------------------
    cd tools
    ./fwtool -c ../firmware/trekstor/surftab-twin-10.1-ST10432-8/firmware.fw_4 -m 1680 -w 1895 -h 1275 -t 10 -f yflip ../firmware/trekstor/surftab-twin-10.1-ST10432-8/silead_ts.fw_4
    cd -
