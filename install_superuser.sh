#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "This one has to be executed as root to work, please do so!"
	exit
else

	mv Adwaita-dark-OSX/ /usr/share/themes
	mv Adwaita-light-OSX/ /usr/share/themes
fi


