#!/bin/bash


# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# brave browser
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# free file sync
wget https://freefilesync.org/download/FreeFileSync_13.2_Linux.tar.gz
sudo tar -zxvf FreeFileSync_13.2_Linux.tar.gz
sudo ./FreeFileSync_13.2_Install.run

# postman
sudo snap install postman

# discord
sudo snap install discord

# remove created files
rm *deb
rm *gz
rm FreeFileSync_13.2_Install.run
