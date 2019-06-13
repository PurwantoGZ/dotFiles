#!/bin/bash
echo "\n First enter ur password to see device list"
sudo fdisk -l
echo "\nFormat your flashdisk to NTFS?\n"
echo "Enter device address from list above... like /dev/sdX\n"
read FLASHDISKADDRESS
echo "\nAre you sure wanna format $FLASHDISKADDRESS ? (Y/N)\n"
read CONFIRM
if [[ "$CONFIRM" = "Y" ||  "$CONFIRM" = "y" ]]; then
	echo "\nEnter a label name for your flashdisk\n"
	read FDNAME
	sudo mkntfs $FLASHDISKADDRESS -Q -L $FDNAME -F
	echo "\nCongrats\n"
elif [[ "$CONFIRM" = "N" || "$CONFIRM" = "n" ]]; then
	echo "\nNoob!\n"
fi
