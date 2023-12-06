#!/bin/bash

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# free file sync
wget https://freefilesync.org/download/FreeFileSync_11.28_Linux.tar.gz
tar -xvf FreeFileSync_11.28_Linux.tar.gz
sudo ./FreeFileSync_11.28_Install.run

