#!/bin/bash

DIR="$(dirname "$0")"

# install psql for nvim dadbod (sql in nvim)
sudo apt-get install -y postgresql-client

snap install nvim --classic

#installing packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install primeagen settings
cp -r $DIR/../../lib/nvim ~/.config/

#running :so in packer file and :PackerSync
nvim --headless -c 'so ~/.config/nvim/lua/theprimeagen/packer.lua' -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

#install xclip for global copy/paste and ripgrep for searching
sudo apt-get install xclip
sudo apt-get install ripgrep

#add alias to the .zshrc config file
echo 'alias vim=nvim' >> ~/.zshrc


