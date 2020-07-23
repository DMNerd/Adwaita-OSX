#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	mv Adwaita-dark-OSX/ $HOME/.themes
	mv Adwaita-light-OSX/ $HOME/.themes
	echo "Installed as normal user, the install directory is $HOME/.themes"
	echo "Checking if the installation needs repairing"
	cd $HOME/.themes
	if  [ -d "gtk-3.0" ]; then
		echo "Seems like the installation needs repairing"
		mkdir Adwaita-dark-OSX
		mv gtk-3.0 Adwaita-dark-OSX/
		mv gtk-2.0 Adwaita-dark-OSX/
		echo "Repaired the installation"
		exit
	else
		echo "Everything in order"	
		exit
	fi
else
	mv Adwaita-dark-OSX/ /usr/share/themes
	mv Adwaita-light-OSX/ /usr/share/themes
	echo "Installed as superuser, the install directory is /usr/share/themes"
	echo "Checking if the installation needs repairing"
	cd /usr/share/themes
	if  [ -d "gtk-3.0" ]; then
		echo "Seems like the installation needs repairing"
		mkdir Adwaita-dark-OSX
		mv gtk-3.0 Adwaita-dark-OSX/
		mv gtk-2.0 Adwaita-dark-OSX/
		echo "Repaired the installation"
		exit
	else
		echo "Everything in order"	
		exit
	fi
fi


