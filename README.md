# iphone_photo_backup
Bash script to backup photos/videos from iphone (using cable connection to USB port)

This bash script has been tested on Ubuntu 20.04 (x86_64) and Raspbian (Jan 2021).
Iphone must use the following setting to allow photos to be copied:
Settings -> photos -> Transfer to MAC or PC -> keep originals 

The script queries how many days worth of photos/videos you want to copy. The script then queries the directory to copy those files to. After the files are copied, they are renamed to have the photo date as a prefix to the new filename.

Notes:

(1) Before using ifuse to mount the iphone to the local ubuntu machine, create /media/iphone, chmod and chgrp to give the local user full permissions to the folder

(2) This script relies on the the following packages to be installed ( sudo apt install libimobiledevice6 libimobiledevice-utils ifuse gcp )


No Licence. Use at your own risk. Not liable for any damage to your iphone.

Also, I would recommend the following setting to force your iphone to save photos as JPG and videos as MP4:
Settings -> camera -> formats -> most compatible 

---------------------------------------------------------------------
NEW METHOD: 

Use iphone Shortcuts app to make a script that copies and renames photos and videos to a samba share over wifi (which has already been setup in the Files app). This shortcut can be run on a schedule. and is much easier than my bash script that requires a cable connection to the iphone. I needed to create an empty Photo album called "ALREADY_BACKED-UP" so that only new files are copies (no overwriting).

![screen_shot_1](https://github.com/charkster/iphone_photo_backup/blob/master/screen_capture/2022_03-14_18_24_45_IMG_6294.png)
![screen_shot_1](https://github.com/charkster/iphone_photo_backup/blob/master/screen_capture/2022_03-14_18_26_54_IMG_6295.png)
