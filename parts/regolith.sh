#!/bin/bash

# Register the Regolith public key to your local apt
wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

# Add the repository URL to your local apt
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/release-3_0-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list

# Update apt and run install
sudo apt update -y
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille -y

# additional indicators
sudo apt install i3xrocks-battery -y
sudo apt install i3xrocks-volume -y

# setting config
mkdir ~/.config/regolith3
mkdir ~/.config/regolith3/i3
cp /etc/regolith/i3/config ~/.config/regolith3/i3/config
echo 'bindsym $mod+Shift+o move workspace to output right' >> ~/.config/regolith3/i3/config





