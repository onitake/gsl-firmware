Cube/i1101
---------------------------------------------

| Item                      | Description |
|---------------------------|-------------|
| Manufacturer              | Cube(ALLDOCUBE) |
| Device                    | KNote(i1101) |
| Website                   | [Product Homepage](http://51cube.com/knote.html) |
| Vendor driver (Windows)   | [SileadTouch.sys](windows/SileadTouch.sys), *Read instructions below.*|
| Extracted firmware        | [firmware.fw](firmware.fw) |
| Firmware for gslx680-acpi | [silead_ts.fw](silead_ts.fw) |
| Display resolution        | 1920x1080 |
| Touch panel resolution    | 1940x1500 |
| Touch controller          | GSL1680(MSSL1680) |
| Multitouch support        | Yes(10) |
| Finger tracking           | Yes |
| Mirrored horizontally     | No |
| Mirrored vertically       | No |
| Axes swapped              | No |
| Comments                  | `fwtool -c firmware.fw_1 -m 1680 -w 1940 -h 1500 -t 10 -f track silead_ts.fw` |

Firmware extracted from windows driver file, using the following method from [edward-p/mssl1680-firmware](https://github.com/edward-p/mssl1680-firmware)

```
export F=SileadTouch.sys                                                                                                                                      :(
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
```

Which generates following results:

```
0x0000e060       57440    F0 00 00 00 02 00 00 00
--
0x00018870      100464    7C 00 00 00 00 00 00 00
0x00018978      100728    7C 00 00 00 32 31 3A 30
```

Then dump firmware out:

```
dd bs=1 if=$F of=firmware.fw skip=57440  count=$(( 100464 -  57440 + 8))
```


