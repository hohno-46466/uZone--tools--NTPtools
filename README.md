# GitHub/uZone--tools--NTPtools

    /uZone--tools--NTPtools
     ├── dumpNTPpacket.old
     ├── dumpNTPpacket.sh
     ├── getNTPdata.old
     ├── getNTPdata.sh
     ├── NTPtime2unixTime.sh
     ├── ptw
     │   └── ptw.c
     ├── README.md
     ├── unixTime2humanReadableTime.sh
     └── unixTime2ISO8601time.sh
     
     1 directory, 9 files ( Fri 30 Jul 2021 09:28:43 PM JST )

* Example: 

    $ getNTPdata.sh | dumpNTPpacket.sh  | grep RecTime | awk '{print $3}' | NTPtime2unixTime.sh  | unixTime2humanReadableTime.sh 
      20210717-221813

Note: 	url = https://github.com/hohno-46466/uZone--tools--NTPtools

Note:   url = git@github.com:hohno-46466/uZone--tools--NTPtools.git

-EOF-
