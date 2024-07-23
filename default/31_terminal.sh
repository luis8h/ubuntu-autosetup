#!/bin/bash

# kitty
sudo apt install kitty -y
sudo update-alternatives --config x-terminal-emulator

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# ohmyposh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# curl
suto apt install curl -y

# tree for fuzzy search preview
sudo apt install tree -y

# fzf
# sudo apt install fzf -y # old version
sudo apt remove fzf -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# nerdfont
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

# install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# tmux
# sudo apt install tmux -y # too old version causing error with floax plugin
brew install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source-file ~/.config/tmux/tmux.conf

~/.tmux/plugins/tpm/bin/install_plugins
