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

# clone dotfiles repo and run stow
sudo apt install stow build-essential -y
git clone https://github.com/luis8h/dotfiles.git ~/dotfiles

curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | /bin/bash -s ~/.cache/dein
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

rm ~/.profile
cd ~/dotfiles
stow -v . --adopt
git restore .

