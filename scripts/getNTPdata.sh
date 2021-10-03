#! /bin/sh

# getNTPdata.sh

# Prev update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Last update: Fri Jul 30 19:33:46 JST 2021 by @hohno_at_kuimc

# Public domain

NTPserver="ntp.nict.jp"

exit_on_error() { echo "Error: $1 (ErrorCode = $2)"; exit $2; }

[ "x$(which nc)" = "x" ]   && exit_on_error "Prepare nc command" 9
[ "x$(which pxw)" = "x" ]  && exit_on_error "Prepare ptw command" 9 
[ "x$(which gawk)" = "x" ] && exit_on_error "Prepare gawk command" 9 

gawk 'BEGIN{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()} {}' < /dev/null \
| nc -w 1 -u ${NTPserver} 123 \
| ptw hexdump -C \
| head -3

