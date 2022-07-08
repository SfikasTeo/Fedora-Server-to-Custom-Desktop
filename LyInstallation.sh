#!/bin/bash
cd ~
git clone --recurse-submodules https://github.com/nullgemm/ly
cd ly

sudo make
sudo make install

#enable the ly deamon
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
#sudo systemctl set-default graphical.target
