#! /bin/sh

# NTPtime2unixTime.sh

# Prev update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Last update: Thu Jul 29 23:31:16 JST 2021 by @hohno_at_kuimc

# Public domain

gsed -e 's/\(3[0-9]\{9\}\)/$((\1 - 2208988800))/g'  -e 's/^/echo "/'  -e 's/$/"/' | sh
