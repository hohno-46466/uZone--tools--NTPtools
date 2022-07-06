#!/bin/sh
NTPserver=${1:-"ntp.nict.jp"}
nc=nc; [ -x /usr/bin/nc ] && nc=/usr/bin/nc
gawk 'BEGIN{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()}' < /dev/null \
| stdbuf -oL $nc -w 1 -u ${NTPserver} 123 \
| stdbuf -oL hexdump -C \
| head -3

