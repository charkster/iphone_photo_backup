#!/bin/bash
idevicepair pair
echo Hit Enter when iphone is paired:
ifuse /media/iphone
DCIM_PATH="/media/iphone/DCIM"
echo Enter number of days to backup:
read NUM_DAYS
find "${DCIM_PATH}" -mtime -${NUM_DAYS} -type f -exec gcp -p {} /destination \;
cd /destination
ls -al --time-style=full-iso | perl -ne 'if (/ ([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}):([0-9]{2}):([0-9]{2})\.[0-9]* -0700 (IMG_[A-Z]?[0-9]{4}\.[a-zA-Z0-9]+)/) { system("mv $7 $1_$2-$3_$4_$5_$6_$7\n"); }'
