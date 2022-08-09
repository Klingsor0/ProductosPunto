#!/bin/bash
#	AUTOMATIZACION DE SETUP CONFIGS DEBIAN 11
sudo apt install clang
sudo apt install synaptic
sudo apt install zathura
sudo apt install solfege
sudo apt install git
sudo apt-get python3
sudo apt install php php-common gcc
sudo apt install php-imagick
sudo systemctl restart apache2
sudo apt-get install pidof
sudo apt install feh

# configuracion de la interfaz, tener ya bajados los dotfiles
sudo apt update
sudo apt install bspwm sxhkd
sudo chmod 774 ~/.config/bspwm/bspwmrc
sudo chmod 774 ~/.config/sxhkd/sxhkdrc
sudo apt install neofetch
sudo apt install rxvt-unicode
# para polybar es necesario activar los backports
sudo apt edit-sources
sudo deb http://deb.debian.org/debian bullseye-backports main contrib non-free
sudo apt update
sudo apt -t bullseye-backports install polybar
# faltaria instalar las fuentes 
# FiraCode, unifont, Siji, xft:Anonymous Pro
pip3 install pywal
