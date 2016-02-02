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

Conversely, everything in the tools directory published under
the GNU General Public license v2, as laid out in tools/LICENSE


Device list
===========

| Manufacturer  | Device                          | Tested  | Firmware                                                       | Size    | Multitouch      | Comment            |
|---------------|---------------------------------|---------|----------------------------------------------------------------|---------|-----------------|--------------------|
| Chuwi         | hi8                             |  no     | [firmware/chuwi/hi8](firmware/chuwi/hi8)                       | unknown | yes (10 points) |                    |
| Chuwi         | vi8                             |  no     | [firmware/chuwi/vi8](firmware/chuwi/vi8)                       | unknown | yes (10 points) |                    |
| Trekstor      | SurfTab wintron 7.0             |  no     | [firmware/trekstor/surftab7old](firmware/trekstor/surftab7old) | unknown | yes (10 points) | no finger tracking |
| Trekstor      | SurfTab wintron 7.0 (ST70416-6) |  no     | [firmware/trekstor/surftab7new](firmware/trekstor/surftab7new) | unknown | yes (10 points) |                    |
