#! /bin/sh -u

PNAME=$(basename $0)
echo "$PNAME"

SRCDIR=/Users/hohno/bin
TARGETDIR=/Users/hohno/work-in-progress/GitHub/uZone--tools--NTPtools

opts="--exclude=.Spotlight-V100"
opts="$opts --exclude=.TemporaryItems"
opts="$opts --exclude=.fseventsd"
opts="$opts --exclude=.git"
opts="$opts --exclude=${PNAME}"
opts="$opts --exclude=README.md"

[ -d "$TARGETDIR" ] && (set -x; rsync -avE --delete $opts "$@" ${SRCDIR}/{getNTPdata.sh,dumpNTPpacket.sh,NTPtime2unixTime.sh,unixTime2ISO8601time.sh,unixTime2humanReadableTime.sh} "$TARGETDIR")
