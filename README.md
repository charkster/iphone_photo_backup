# iphone_photo_backup
Bash script to backup photos/videos from iphone (using cable connection to USB port)

This bash script has been tested on Ubuntu 20.04 (x86_64) and Raspbian (Jan 2021).
Iphone must use the following setting to allow photos to be copied:
Settings -> photos -> Transfer to MAC or PC -> keep originals 

The script queries how many days worth of photos/videos you want to copy. The script then queries the directory to copy those files to. After the files are copied, they are renamed to have the photo date as a prefix to the new filename.

Notes:

(1) Before using ifuse to mount the iphone to the local ubuntu machine, create /media/iphone, chmod and chgrp to give the local user full permissions to the folder

(2) This script relies on the the following packages to be installed ( sudo apt install libimobiledevice6 libimobiledevice-utils ifuse gcp )

(3) I use "gcp" as the command to copy files. This is needed when copying the files to a samba server, to retain the timestamp. You can change this to "cp -a" if you do not have this issue.

(3) This script calls perl to perform the file renaming.

(4) This script is cool because it searches through all the folders in the iphone's DCIM directory. Any modified photos with a recent timestamp will be found.

No Licence. Use at your own risk. Not liable for any damage to your iphone.

Also, I would recommend the following setting to force your iphone to save photos as JPG and videos as MP4:
Settings -> camera -> formats -> most compatible 
