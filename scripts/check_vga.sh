#!/bin/bash
# Check Active VGA, script by Benjamim gois <benjamim.gois@gmail.com>
# Version 29/07/2010

vgause=`cat /sys/kernel/debug/vgaswitcheroo/switch | grep 0:+`

#Change permitions
gksu chmod 777 /opt/ucc/
gksu chmod 777 /opt/ucc/*

#Clear text file
rm -r /opt/ucc/vga.txt

if [ -f $vgause ]
then
   echo 'High performance GPU is in use' >> /opt/ucc/vga.txt
else
   echo 'Power-save GPU is in use' >> /opt/ucc/vga.txt
fi

