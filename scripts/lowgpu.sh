#!/bin/bash
# Switch to activate Power save graphic card, script by Benjamim gois <benjamim.gois@gmail.com>
# Version 28/07/2010

#Changing folder permitions
gksu chmod 777 /sys/kernel/debug/vgaswitcheroo/switch

#Send notification
notify-send -t 5000 -i /usr/share/icons/blue_tri_64.png "Power saving graphics" "Session will restart in 5sec"

#Manage vga-switchero
echo DIGD > /sys/kernel/debug/vgaswitcheroo/switch
         
