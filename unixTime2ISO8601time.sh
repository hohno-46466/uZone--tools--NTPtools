#! /bin/sh

# unixTime2ISO8601time.sh
# Last update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc

# Public domain

gsed -e 's/ \([1-2][0-9]\{9\}\) / $( LANG=C; \/bin\/date -jr \1 +%Y-%m-%dT%H:%M:%S )  /'  -e 's/^/echo "/'  -e 's/$/"/' | sh
