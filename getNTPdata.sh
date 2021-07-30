#! /bin/sh

# getNTPdata.sh

# Prev update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Last update: Fri Jul 30 19:33:46 JST 2021 by @hohno_at_kuimc

# Public domain

NTPserver="ntp.nict.jp"

gawk 'BEGIN{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()} {}' < /dev/null \
| /usr/bin/nc -w 1 -u ${NTPserver} 123 \
| ptw hexdump -C \
| head -3

exit

# (echo ""; sleep 0.1)

# | sed -e 's/00*[0-9]0 *//g' -e 's/ *|.*$//g' \
# | gawk '{printf "%s ",$0; if (NR==3){printf "\n"}; fflush()}'

