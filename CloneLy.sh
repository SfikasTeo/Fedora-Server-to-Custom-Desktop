#!/bin/bash
cd ~
git clone --recurse-submodules https://github.com/nullgemm/ly
cd ly
sudo make
sudo make install
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
