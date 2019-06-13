#!/bin/env zsh
echo "\nHi, welcome to Linux Bootable!\n"
echo "Please, input image source\n"
find / -name "*.iso" -print -quit 
SOURCE="$(find / -name '*.iso' -print -quit)"
echo "\nWrite iso address above that u wanna use\n"
echo "Enter password to see disk list\n"
sudo fdisk -l
echo "\nSelect the flashdisk to use from above\n"
read TARGET
echo "\nImages from $SOURCE will be mounted to $TARGET\n"
echo "Are you sure? (Y/N)\n"
read CONFIRM
if [ "$CONFIRM" = "Y" ]; then
	sudo dd if=$SOURCE of=$TARGET 
	echo "\nSelamat\n"
elif [ "$CONFIRM" = "N" ]; then
	echo "\nLemah\n"
fi
