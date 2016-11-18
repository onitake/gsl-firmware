# Firmware files ready for use with the upstream Linux silead.ko driver

This directory containts firmware images in the format expected by
the silead.ko driver which is now part of the mainline kernel; and
with filenames such as expected by the devicetree files (for ARM)
shipped with the mainline kernel.

## Installation

To install these firmware files for use with the mainline kernel
simply copy the silead directory to /lib/firmware/silead:

   cp -pr silead /lib/firmware

## List of included firmware files

| Filename                         | For use with |
|----------------------------------|--------------|
| gsl1680-a082-q8-700.fw           | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id a082, variant 0 |
| gsl1680-a082-q8-a70.fw           | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id a082, variant 1 |
| gsl1680-b482-q8-d702.fw          | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 0 |
| gsl1680-b482-q8-a70.fw           | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 1 |
| gsl1680-inet86dz.fw              | Allwinner A23 7" tablets with inet86dz mainboard |
| gsl1680-polaroid-mid2407pxe03.fw | Polaroid 7" MID2407PXE03 tablets |
| gsl3670-polaroid-mid2809pxe04.fw | Polaroid 9" MID2809PXE04 tablets |
| gsl3675-ga10h.fw                 | Allwinner A33 10" tablets with ga10h mainboard |
| gsl3675-gt90h.fw                 | Allwinner A23 9" tablets with ga10h mainboard |
