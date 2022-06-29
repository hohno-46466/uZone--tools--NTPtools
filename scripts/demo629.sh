#!/bin/sh
NTPserver="ntp.nict.jp"
gawk 'BEGIN{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()} {}' < /dev/null \
| ptw nc -w 1 -u ${NTPserver} 123 \
| ptw hexdump -C \
| head -3

