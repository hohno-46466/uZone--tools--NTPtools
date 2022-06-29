#!/bin/sh

# getNTPdata.sh

# Prev update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Prev update: Fri Jul 30 19:33:46 JST 2021 by @hohno_at_kuimc
# Last update: Wed Jun 29 19:06:48 JST 2022 by @hohno_at_kuimc

# Public domain

NTPserver="ntp.nict.jp"

exit_on_error() { err=$1; shift; echo "Error: $@ (ErrorCode = $err)"; exit $err; }

[ "x$(which nc)" = "x" ]   && exit_on_error 9 "prepare nc command"
[ "x$(which pxtw)" = "x" ] && exit_on_error 8 "prepare ptw command"
[ "x$(which gawk)" = "x" ] && exit_on_error 7 "prepare gawk command"

gawk 'BEGIN{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()} {}' < /dev/null \
| nc -w 1 -u ${NTPserver} 123 \
| ptw hexdump -C \
| head -3

