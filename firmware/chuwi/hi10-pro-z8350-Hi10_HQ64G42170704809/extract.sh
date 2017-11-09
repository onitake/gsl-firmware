#!/bin/bash
# reference https://github.com/onitake/gsl-firmware/tree/master/firmware/trekstor/surftab-twin-10.1-ST10432-8
cd $(dirname $(readlink -f $0))
F=SileadTouch.sys
fwtool="fwtool"
echo -e “Extracting file $F”

offsetFrom=$(cat $F | hexdump -e '1/1  "0x%8.8_ax    "' -e '1/1  "%8._ad    "' -e '8/1 "%02X ""\n"""'\
       | grep -i -E "F0 00 00 00 02 00 00 00|7C 00 00 00 .. .. .. .."\
       | grep "F0 00 00 00 02 00 00 00" -B1\
       | sed -n '/ /s/ \+/ /gp'\
       | cut -d' ' -f2)

offsetTo=$(cat $F \
       | hexdump -e '1/1  "0x%8.8_ax    "' -e '1/1  "%8._ad    "' -e '8/1 "%02X ""\n"""' \
       | grep -i -E "F0 00 00 00 02 00 00 00|7C 00 00 00 .. .. .. .." \
       | tail -n2\
       | head -n1\
       | sed -n '/ /s/ \+/ /gp'\
       | cut -d' ' -f2)

echo "offset: ${offsetFrom} .. ${offsetTo} > firmware.fw"
dd bs=1 if=$F of=firmware.fw skip=${offsetFrom} count=$(( ${offsetTo} - ${offsetFrom} + 8))
echo "fwtool: firmware.fw > silead_ts.fw"
$fwtool -c firmware.fw -m 1680 -w 1895 -h 1275 -t 10 -f yflip silead_ts.fw
echo "---------------------------------"
echo "you must copy silead_ts.fw to: /lib/firmware/silead_ts.fw"
