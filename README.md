# GitHub/uZone--tools--NTPtools

     ./uZone--tools--NTPtools
     ├── README.md
     ├── misc
     │   └── ptw
     │       └── ptw.c
     ├── old
     │   ├── dumpNTPpacket.old
     │   └── getNTPdata.old
     └── scripts
         ├── NTPtime2unixTime.sh
         ├── dumpNTPpacket.sh
         ├── getNTPdata.sh
         ├── unixTime2ISO8601time.sh
         └── unixTime2humanReadableTime.sh
     
     4 directories, 9 files (Fri Oct  1 08:00:52 JST 2021)

* Example: 

    $ getNTPdata.sh | dumpNTPpacket.sh  | grep RecTime | awk '{print $3}' | NTPtime2unixTime.sh  | unixTime2humanReadableTime.sh 
      20210717-221813

Note: 	url = https://github.com/hohno-46466/uZone--tools--NTPtools

Note:   url = git@github.com:hohno-46466/uZone--tools--NTPtools.git

-EOF-
