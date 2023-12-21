#!/bin/bash

# running update/upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y


# remap capslock to escape and shift+capslock to capslock default behavior
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"

# disable mouse acceleration
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'

# for german umlaute with a""
setxkbmap -option compose:ralt
