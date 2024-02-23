#!/bin/bash


#install tmux
sudo apt install tmux -y

#install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#set tmux config file
tmux source-file ~/.config/tmux/tmux.conf

#running install plugins
~/.tmux/plugins/tpm/bin/install_plugins
