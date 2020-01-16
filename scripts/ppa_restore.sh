#!/bin/bash
# Backup ppa files on ubuntuone, script by Benjamim gois <benjamim.gois@gmail.com>
# Version 18/11/2010

#Copy /etc/apt to Ubuntu One
gksu cp -rf /home/$USER/Ubuntu\ One/.ppa-backup/* /etc/apt/

#Backup notification
notify-send -t 5000 -i /usr/share/icons/ppa_restore_r1.png "PPA restore" "Local files restored from Ubuntu One"

#Wait 5 secounds
sleep 5

#Start Update manager
update-manager
         
