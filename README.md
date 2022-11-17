# GitHub/uZone--tools--NTPtools

    ./uZone--tools--NTPtools
     ├──  README.md
     ├──  README.md.old
     ├──  getNTPdata.sh.old
     ├──  misc/
     │   └──  ptw/
     │       └──  ptw.c
     ├──  old/
     │   ├──  dumpNTPpacket.old
     │   └──  getNTPdata.old
     └──  scripts/
         ├──  NTPtime2unixTime.sh
         ├──  demo629.sh
         ├──  dumpNTPpacket.sh
         ├──  getNTPdata.sh
         ├──  unixTime2ISO8601time.sh
         └──  unixTime2humanReadableTime.sh
     
     4 directories, 12 files (Thu Nov 17 15:15:42 JST 2022)


* Example: 

    $ getNTPdata.sh | dumpNTPpacket.sh  | grep RecTime | awk '{print $3}' | NTPtime2unixTime.sh  | unixTime2humanReadableTime.sh 
      20210717-221813

Note: URL = https://github.com/hohno-46466/uZone--tools--NTPtools

Note: URL = git@github.com:hohno-46466/uZone--tools--NTPtools.git

-EOF-
