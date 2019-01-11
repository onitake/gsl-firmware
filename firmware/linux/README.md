# Firmware files ready for use with the upstream Linux silead.ko driver

This directory containts firmware images in the format expected by
the silead.ko driver which is now part of the mainline kernel; and
with filenames such as expected by the devicetree files (for ARM) resp.
the DMI matched info in drivers/platform/x86/silead_dmi.c (for X86), as
shipped with the mainline kernel.

## Installation

To install these firmware files for use with the mainline kernel
simply copy the silead directory to /lib/firmware/silead:

   cp -pr silead /lib/firmware

## List of included firmware files

| Filename                               | For use with |
|----------------------------------------|--------------|
| gsl1680-a082-q8-700.fw                 | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id a082, variant 0 |
| gsl1680-a082-q8-a70.fw                 | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id a082, variant 1 |
| gsl1680-b482-q8-d702.fw                | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 0 |
| gsl1680-b482-q8-a70.fw                 | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 1 |
| gsl1680-inet86dz.fw                    | Allwinner A23 7" tablets with inet86dz mainboard |
| gsl1680-polaroid-mid2407pxe03.fw       | Polaroid 7" MID2407PXE03 tablets |
| gsl3670-polaroid-mid2809pxe04.fw       | Polaroid 9" MID2809PXE04 tablets |
| gsl3675-ga10h.fw                       | Allwinner A33 10" tablets with ga10h mainboard |
| gsl3675-gt90h.fw                       | Allwinner A23 9" tablets with ga10h mainboard |
| gsl1680-chuwi-hi8.fw                   | Chuwi Hi8 tablets |
| gsl1680-chuwi-hi10-air.fw              | Chuwi Hi10 Air tablets |
| gsl1680-chuwi-hi10-pro.fw              | Chuwi Hi10 Pro tablets |
| gsl1680-gp-electronic-t701.fw          | GP-electronic T701 tablets |
| gsl1680-pipo-w2s.fw                    | Pipo W2S tablets |
| gsl1686-surftab-wintron70-st70416-6.fw | Trekstor Surftab Wintron 7.0 ST70416-6 tablets |
| gsl1686-teclast_x98plus2.fw            | Teclast X98 Plus II tablets |
| gsl3670-cube-iwork8-air.fw             | Cube iWork8 Air tablets |
| gsl3670-itworks-tw891.fw               | I.T.Works TW891 2-in-1s |
| gsl3670-surftab-twin-10-1-st10432-8.fw | TrekStor SurfTab twin 10.1 ST10432-8 tablets |
| gsl3676-chuwi-vi8.fw                   | Chuwi Vi8 (CWI506) tablets |
| gsl3676-irbis_tw36.fw                  | Irbis TW36 tablet |
| gsl3692-jumper-ezpad-6-pro.fw          | Jumper EZpad 6(S) Pro tablets |
| gsl3676-jumper-ezpad-mini3.fw          | Jumper EZpad mini3 tablets |
| gsl3676-onda-obook-20-plus.fw          | Onda oBook 20 Plus tablets |
| gsl3676-onda-v80-plus-v3.fw            | Ondo V80 Plus v3 tablets |
| gsl1680-onda-v820w-32g.fw              | Onda V820w Dual OS tablets |
| gsl3680-chuwi-hi8-pro.fw               | Chuwi Hi8 Pro (CWI513) tablets |
| gsl3680-chuwi-vi10.fw                  | Chuwi Vi10 (CWI505) tablets |
| gsl3680-onda-v891w-v1.fw               | Onda V891w (v1) tablets |
| gsl3680-pov-mobii-wintab-p800w-v20.fw  | Point of View mobii Wintab P800w (v2.0) tablets |
| gsl3692-pov-mobii-wintab-p800w.fw      | Point of View mobii Wintab P800w (v2.1) tablets |
| gsl3692-pov-mobii-wintab-p1006w-v10.fw | Point of View mobii Wintab P1006w (v1.0) tablets |
| gsl1686-digma_citi_e200.fw             | Digma Citi E200 tablets |
| gsl1680-teclast-x3-plus.fw             | Teclast X3 Plus tablets |
| gsl1680-trekstor-primebook-c13.fw      | Trekstor Primebook C13 (convertible) |
| gsl1680-trekstor-primetab-t13b.fw      | Trekstor Primetab T13B tablet |
