#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	mv Adwaita-dark-OSX/ $HOME/.themes
	mv Adwaita-light-OSX/ $HOME/.themes
	cd $HOME/.themes
	mkdir Adwaita-dark-OSX/
	mv gtk-2.0 Adwaita-dark-OSX/
	mv gtk-3.0 Adwaita-dark-OSX/
	echo "Installed as normal user, the install directory is $HOME/.themes"
	exit
else
	mv Adwaita-dark-OSX/ /usr/share/themes
	mv Adwaita-light-OSX/ /usr/share/themes
	echo "Installed as superuser, the install directory is /usr/share/themes"
	exit
fi


