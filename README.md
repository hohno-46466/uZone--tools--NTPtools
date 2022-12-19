# GitHub/uZone--tools--NTPtools

    ./uZone--tools--NTPtools
     ├──  README.md
     ├──  README.md.old
     ├──  getNTPdata.sh.old
     ├──  getNTPdata.sh.old.bak
     ├──  misc/
     │   └──  ptw/
     │       └──  ptw.c
     ├──  old/
     │   ├──  dumpNTPpacket.old
     │   ├──  dumpNTPpacket.old.bak
     │   ├──  getNTPdata.old
     │   └──  getNTPdata.old.bak
     └──  scripts/
         ├──  NTPtime2unixTime.sh
         ├──  NTPtime2unixTime.sh.bak
         ├──  demo629.sh
         ├──  dumpNTPpacket.sh
         ├──  dumpNTPpacket.sh.bak
         ├──  getNTPdata.sh
         ├──  getNTPdata.sh.bak
         ├──  unixTime2ISO8601time.sh
         ├──  unixTime2ISO8601time.sh.bak
         ├──  unixTime2humanReadableTime.sh
         └──  unixTime2humanReadableTime.sh.bak
     
     4 directories, 20 files (Mon Dec 19 23:54:36 JST 2022)


* Example: 

    $ getNTPdata.sh | dumpNTPpacket.sh  | grep RecTime | awk '{print $3}' | NTPtime2unixTime.sh  | unixTime2humanReadableTime.sh 
      20210717-221813

Note: URL = https://github.com/hohno-46466/uZone--tools--NTPtools

Note: URL = git@github.com:hohno-46466/uZone--tools--NTPtools.git

-EOF-
