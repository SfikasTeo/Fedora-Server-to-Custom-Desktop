#!/bin/bash

#Scipt for installing the most basic programms the fedora Server needs. It is mandatoty to select the network packages as well during installation

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./install.sh" 2>&1
  exit 1
fi

# Updating System
dnf update -y

#Basic programms
dnf install kitty nitrogen picom bspwm sxhkd polybar rofi pcmanfm gcc python-unversioned-command timeshift

#fish shell + less important binaries
sudo dnf install fish starship flameshot fira-code-fonts zip unzip wget

#X11
dnf insstall Xorg xorg-x11-xinit xorg-x11-xauth xorg-x11-drivers xrandr arandr

#Breave-bin
dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ #add brave repository
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc #add repository key
sudo dnf install brave-browser
