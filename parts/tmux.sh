#!/bin/bash

DIR="$(dirname "$0")"

#install tmux
sudo apt install tmux -y

#install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#set tmux config file
mkdir ~/.config/tmux
cp $DIR/../lib/tmux/tmux.conf ~/.config/tmux/tmux.conf
tmux source ~/.config/tmux/tmux.conf

#running install plugins
~/.tmux/plugins/tpm/bin/install_plugins

