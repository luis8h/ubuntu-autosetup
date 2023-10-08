#!/bin/bash

DIR="$(dirname "$0")"

snap install nvim --classic

#installing packer 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r $DIR/../lib/nvim ~/.config/

nvim -es -u ${HOME}/.config/nvim/lua/theprimeagen/packer.lua -c "so" -c "qa"
