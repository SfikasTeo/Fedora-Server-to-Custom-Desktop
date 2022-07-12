#!/bin/bash

#Scipt for installing the most basic programms the fedora Server needs. It is mandatoty to select the network packages as well during installation

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please use sudo" 2>&1
  exit 1
fi

# Updating System
dnf update -y

#Basic programms
dnf install -y kitty feh picom polybar rofi pcmanfm gcc python-unversioned-command timeshift

#less important binaries
dnf install -y fish flameshot zip unzip wget curl bpytop lm_sensors

#Install basic fonts
dnf install -y mscore-fonts fira-code-fonts

#X11
dnf insstall -y Xorg xorg-x11-xinit xorg-x11-xauth xorg-x11-drivers xrandr arandr

#Breave-bin
dnf install dnf-plugins-core
dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ #add brave repository
rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc #add repository key
dnf install brave-browser
