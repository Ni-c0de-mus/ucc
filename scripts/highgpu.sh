#!/bin/bash
# Switch to activate High performance card, script by Benjamim gois <benjamim.gois@gmail.com>
# Version 28/07/2010

#Changing folder permitions
gksu chmod 777 /sys/kernel/debug/vgaswitcheroo/switch

#Send notification
notify-send -t 5000 -i /usr/share/icons/red_tri_64.png "High performance graphics" "Session will restart in 5sec"

#Manage vga-switchero
echo DDIS > /sys/kernel/debug/vgaswitcheroo/switch       
