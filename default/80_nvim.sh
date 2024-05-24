#!/bin/bash

# install psql for nvim dadbod (sql in nvim)
sudo apt-get install -y postgresql-client

#older version
#snap install nvim --classic

bob use stable

#installing packer
# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
#  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install primeagen settings
# cp -r $DIR/../../lib/nvim ~/.config/

#running :so in packer file and :PackerSync
# nvim --headless -c 'so ~/.config/nvim/lua/theprimeagen/packer.lua' -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

#install xclip for global copy/paste and ripgrep for searching
sudo apt-get install xclip
sudo apt-get install ripgrep

#needed for treesitter auto_install to work with vimtex
sudo npm install -g tree-sitter-cli

# silicon cli for taking code screenshots
sudo apt install expat -y
sudo apt install libxml2-dev -y
sudo apt install pkg-config libasound2-dev libssl-dev cmake libfreetype6-dev libexpat1-dev libxcb-composite0-dev libharfbuzz-dev libfontconfig1-dev g++ -y
cargo install silicon

#compiler for vimtex
sudo apt install latexmk
