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
| gsl1680-archos-101-cesium-educ.fw      | Archos 101 Cesium Educ tablets |
| gsl1680-b482-q8-d702.fw                | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 0 |
| gsl1680-b482-q8-a70.fw                 | Allwinner SoC Q8 tablets (https://linux-sunxi.org/Format_Q8) with a gsl1680 with chip-id b482, variant 1 |
| gsl1680-inet86dz.fw                    | Allwinner A23 7" tablets with inet86dz mainboard |
| gsl1680-polaroid-mid2407pxe03.fw       | Polaroid 7" MID2407PXE03 tablets |
| gsl3670-polaroid-mid2809pxe04.fw       | Polaroid 9" MID2809PXE04 tablets |
| gsl3675-ga10h.fw                       | Allwinner A33 10" tablets with ga10h mainboard |
| gsl3675-gt90h.fw                       | Allwinner A23 9" tablets with ga10h mainboard |
| gsl1680-bush-bush-windows-tablet.fw    | BUSH Bush Windows tablets |
| gsl1680-chuwi-hi8.fw                   | Chuwi Hi8 tablets |
| gsl1680-chuwi-hi10-air.fw              | Chuwi Hi10 Air tablets |
| gsl1680-chuwi-hi10-pro.fw              | Chuwi Hi10 Pro tablets |
| gsl1680-chuwi-hi10-plus.fw             | Chuwi Hi10 Plus tablets |
| gsl1680-chuwi-surbook-mini.fw          | Chuwi Surbook Mini tablets |
| gsl1680-connect-tablet9.fw             | Connect Tablet9 tablets |
| gsl1680-csl-panther-tab-hd.fw          | CSL Panther Tab HD |
| gsl1680-dexp-ursus-kx210i.fw           | DEXP Ursus KX210i tablet |
| gsl1680-globalspace-solt-ivw116.fw     | Globalspace SoLT IVW 11.6" |
| gsl1680-gp-electronic-t701.fw          | GP-electronic T701 tablets |
| gsl1680-irbis-tw118.fw                 | Irbis TW118 tablets |
| gsl1680-mpman-converter9.fw            | MPMan Converter9 tablets |
| gsl1680-myria-my8307.fw                | Myria MY8307 tablets |
| gsl1680-onda-v820w-32g.fw              | Onda V820w Dual OS tablets |
| gsl1680-pipo-w2s.fw                    | Pipo W2S tablets |
| gsl1680-pipo-w11.fw                    | Pipo W11 tablets |
| gsl1680-positivo-c4128b.fw             | Positivo C4128B convertible |
| gsl1680-rwc-nanote-p8.fw               | RWC Nanote P8 UMPC-02-SR (convertible) |
| gsl1680-rwc-nanote-next.fw             | RWC Nanote NEXT UMPC-03-SR (convertible) |
| gsl1680-sary-tab-3.fw                  | SARY Tab 3 |
| gsl1680-teclast-x3-plus.fw             | Teclast X3 Plus tablets |
| gsl1680-trekstor-primebook-c11.fw      | Trekstor Primebook C11[B] (convertible) |
| gsl1680-trekstor-primebook-c13.fw      | Trekstor Primebook C13 (convertible) |
| gsl1680-trekstor-primetab-t13b.fw      | Trekstor Primetab T13B tablets |
| gsl1680-vinga-twizzle_j116.fw          | Vinga Twizzle J116 |
| gsl1686-dexp-ursus-7w.fw               | Dexp Ursus 7W tablets |
| gsl1686-dexp-ursus-7w-rev2.fw          | Dexp Ursus 7W (rev2) tablets |
| gsl1686-digma_citi_e200.fw             | Digma Citi E200 tablets |
| gsl1686-surftab-wintron70-st70416-6.fw | Trekstor Surftab Wintron 7.0 ST70416-6 tablets |
| gsl1686-teclast_x98plus2.fw            | Teclast X98 Plus II tablets |
| gsl3670-cube-iwork8-air.fw             | Cube iWork8 Air tablets |
| gsl3692-cube-knote-i1101S.fw           | Cube Knote Go tablets |
| gsl3670-itworks-tw891.fw               | I.T.Works TW891 2-in-1s |
| gsl3670-surftab-twin-10-1-st10432-8.fw | TrekStor SurfTab twin 10.1 ST10432-8 tablets |
| gsl3676-chuwi-hi8-air.fw               | Chuwi Hi8 Air tablets |
| gsl3676-chuwi-vi8.fw                   | Chuwi Vi8 (CWI506) tablets |
| gsl3676-irbis_tw36.fw                  | Irbis TW36 tablets |
| gsl3676-jumper-ezpad-mini3.fw          | Jumper EZpad mini3 tablets |
| gsl3676-onda-obook-20-plus.fw          | Onda oBook 20 Plus tablets |
| gsl3676-onda-v80-plus-v3.fw            | Ondo V80 Plus v3 tablets |
| gsl3676-onda-v891w-v3.fw               | Onda v891w v3 tablets |
| gsl3676-onda-v891-v5.fw                | Onda v891 v5 tablets |
| gsl3680-chuwi-hi8-pro.fw               | Chuwi Hi8 Pro (CWI513) tablets |
| gsl3680-chuwi-vi10.fw                  | Chuwi Vi10 (CWI505) tablets |
| gsl3680-irbis_tw90.fw                  | Irbis TW90 tablets |
| gsl3680-jumper-ezpad-7.fw              | Jumper EZpad 7 tablets |
| gsl3680-mpman-mpwin895cl.fw            | MPMAN MPWIN895CL tablets |
| gsl3680-onda-v891w-v1.fw               | Onda V891w (v1) tablets |
| gsl3680-pov-mobii-wintab-p800w-v20.fw  | Point of View mobii Wintab P800w (v2.0) tablets |
| gsl3680-predia-basic.fw                | Predia Basic 2-in-1s |
| gsl3692-jumper-ezpad-6-m4.fw           | Jumper EZpad 6 m4 tablets |
| gsl3692-jumper-ezpad-6-pro.fw          | Jumper EZpad 6(S) Pro tablets |
| gsl3692-jumper-ezpad-6-pro-b.fw        | Jumper EZpad 6 Pro (B) tablets |
| gsl3692-pov-mobii-wintab-p800w.fw      | Point of View mobii Wintab P800w (v2.1) tablets |
| gsl3692-pov-mobii-wintab-p1006w-v10.fw | Point of View mobii Wintab P1006w (v1.0) tablets |
| gsl3692-teclast-tbook11.fw             | Teclast Tbook 11 tablets |
| gsl3692-teclast-x16-plus.fw            | Teclast X16 Plus tablets |
