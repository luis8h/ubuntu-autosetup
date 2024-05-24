#!/bin/bash

wget https://www.spacedrive.com/api/releases/desktop/stable/linux/x86_64 -O ~/Downloads/Spacedrive-linux-x86_64.deb

sudo dpkg -i ~/Downloads/Spacedrive-linux-x86_64.deb

# if there are dependency issues
#sudo apt-get install -f

