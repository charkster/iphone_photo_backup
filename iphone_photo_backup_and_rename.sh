#!/bin/bash
DCIM_PATH="$(find /run/user/1000/gvfs/gphoto2:host* -maxdepth 2 -type d -name DCIM)"
echo "Found ${DCIM_PATH}"
echo Enter number of days to backup:
read NUM_DAYS
echo Enter directory to backup to:
read BACKUP_DIR
find "${DCIM_PATH}" -mtime -${NUM_DAYS} -exec gcp {} ${BACKUP_DIR} \;
cd ${BACKUP_DIR}
ls -al --time-style=full-iso | perl -ne 'if (/ ([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}):([0-9]{2}):([0-9]{2})\.000000000 -0700 (IMG_[A-Z]?[0-9]{4}\.[a-zA-Z0-9]{3})/) { system("mv $7 $1_$2-$3_$4_$5_$6_$7\n"); }'
