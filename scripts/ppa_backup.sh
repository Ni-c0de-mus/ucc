#!/bin/bash
# Backup ppa files on ubuntuone, script by Benjamim gois <benjamim.gois@gmail.com>
# Version 18/11/2010

#Create backup directory
gksu mkdir /home/$USER/Ubuntu\ One/.ppa-backup

#Copy /etc/apt to Ubuntu One
sudo cp -rf /etc/apt/* /home/$USER/Ubuntu\ One/.ppa-backup/

#Backup notification
notify-send -t 5000 -i /usr/share/icons/ppa_backup2_r1.png "PPA Backup" "Files stored on Ubuntu One"
         
