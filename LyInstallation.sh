#!/bin/bash

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please use sudo" 2>&1
  exit 1
fi

#clone the repository
cd ~
git clone --recurse-submodules https://github.com/nullgemm/ly
cd ly

#compile
sudo make

#run the appropriate installation scripts
sudo make install

#enable the ly deamon
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
#sudo systemctl set-default graphical.target

#move to the home folder
cd ~
