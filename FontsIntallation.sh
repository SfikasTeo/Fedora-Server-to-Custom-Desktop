#!/bin/bash
#Scipt is used to install the wanted fonts (wget is mandatory)

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please use sudo" 2>&1
  exit 1
fi
# Installing fonts
sudo dnf install fontawesome-fonts fontawesome-fonts-web mscore-fonts -y
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d /usr/share/fonts

# Reloading Font
fc-cache -vf

# Removing zip Files
rm ./FiraCode.zip ./Meslo.zip
