
### how to recompile kernel (example with v4.20.2) on ubuntu/debian based distros

Note: Please consider compiling the kernel with fakeroot and without sudo privileges.

1) get requiered tools

```sudo apt-get install dmidecode build-essential libncurses-dev bison flex libssl-dev libelf-dev```

2) get latest (4.20.2 at the moment of creation of this) linux kernel from kernel.org

```wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.20.2.tar.xz -P ./Downloads```

3) extract the archive's content

```tar -xf Downloads/linux-4.20.2.tar.xz```

4) enter the directory of the kernel

```cd linux-4.20.2```

5) clean the repository

```sudo make clean```

6.1) get dmi parameters of your device with dmidecode, viewing only the first 20 lines (which should contain the BIOS information, if not search through the complete output)

```sudo dmidecode | head -n 20```

6.2) edit the touchscreen_dmi.c file and add entries as described in section silead_ts

```sudo nano ./drivers/platform/x86/touchscreen_dmi.c```

7.1) start the terminal-gui based configuration

```sudo make menuconfig```

7.2) enable the following option

Device Drivers  --->X86 Platform Specific Device Drivers  --->DMI based touchscreen configuration info

8) save .config and exit

9) compilation will take a long time - 3 hours+ on my tablet with celeron n3450, using only two threads because otherwise it tends to overheat


```sudo make -j2 deb-pkg```

10)

```cd ..```

11) install the debian packages of the compiled kernel

```sudo dpkg -i linux-libc-dev_4.20.2-1_amd64.deb ```

```sudo dpkg -i linux-headers-4.20.2_4.20.2-1_amd64.deb ```

```sudo dpkg -i linux-image-4.20.2_4.20.2-1_amd64.deb```

```sudo dpkg -i linux-image-4.20.2-dbg_4.20.2-1_amd64.deb```

12) add entry for the new kernel version in grub

```sudo update-grub```

13) copy driver for your device from this repository to

```cp ./tablet-name-driver.fw /lib/firmware/silead/tablet-name-driver.fw```

14) reboot and select linux 4.20 in grub

```reboot```

15) check for possible errors

```dmesg | grep silead```

16) if you have modified touchscreen_dmi.c then please consider creating a patch for the mainline kernel.

see this youtube video by FOSDEM - Greg Kroah-Hartman "Write and Submit your first Linux kernel Patch": https://www.youtube.com/watch?v=LLBrBBImJt4 
