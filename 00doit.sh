#! /bin/sh -eu

PNAME=$(basename $0)
echo "$PNAME"

SRCDIR=/Users/hohno/bin

opts="--exclude=.Spotlight-V100"
opts="$opts --exclude=.TemporaryItems"
opts="$opts --exclude=.fseventsd"
opts="$opts --exclude=.git"
opts="$opts --exclude=${PNAME}"
opts="$opts --exclude=README.md"

TARGET=/Users/hohno/work-in-progress/GitHub/uZone--tools--NTPtools

[ -d "$TARGET" ] && (set -x; rsync -avE --delete $opts "$@" ${SRCDIR}/{getNTPdata.sh,dumpNTPpacket.sh,NTPtime2unixTime.sh,unixTime2ISO8601time.sh,unixTime2humanReadableTime.sh} "$TARGET")

