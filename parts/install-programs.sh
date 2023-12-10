#!/bin/bash

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# free file sync
wget https://freefilesync.org/download/FreeFileSync_13.2_Linux.tar.gz
sudo tar -zxvf FreeFileSync_13.2_Linux.tar.gz
sudo ./FreeFileSync_13.2_Install.run

# postman
sudo snap install postman

# remove created files
rm *deb
rm *gz
rm FreeFileSync_13.2_Install.run
