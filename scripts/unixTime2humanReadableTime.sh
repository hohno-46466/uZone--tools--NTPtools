#!/bin/sh

# unixTime2humanReadableTime.sh

# Prev updated: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Last updated: Sun 01 Aug 2021 11:00:24 AM JST @hohno_at_kuimc

# Public domain

# On macOS and BSD-like operating systems, you need to use GNU sed (gsed) instead of the standard sed.
# gsed -u -e 's/ \([1-2][0-9]\{9\}\) / $( LANG=C; \/bin\/date -jr \1 +%Y%m%d-%H%M%S )  /'  -e 's/^/echo "/'  -e 's/$/"/' | sh

# Linux
sed -u -e 's/ \([1-2][0-9]\{9\}\) / $( LANG=C; \/bin\/date -jr \1 +%Y%m%d-%H%M%S )  /'  -e 's/^/echo "/'  -e 's/$/"/' | sh
