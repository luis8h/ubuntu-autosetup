#!/bin/bash

DIR="$(dirname "$0")"

snap install nvim --classic

#installing packer 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
