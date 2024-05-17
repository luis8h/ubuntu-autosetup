#!/bin/bash

DIR="$(dirname "$0")"

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

# install
sudo apt install -y git-core zsh curl
./$DIR/../lib/terminal-profile/install_zsh.sh

# Color Theme
dconf load /org/gnome/terminal/legacy/profiles:/:fb358fc9-49ea-4252-ad34-1d25c649e633/ < $DIR/../lib/terminal-profile/configs/terminal_profile.dconf
add_list_id=fb358fc9-49ea-4252-ad34-1d25c649e633
old_list=$(dconf read /org/gnome/terminal/legacy/profiles:/list | tr -d "]")

if [ -z "$old_list" ]
then
        front_list="["
else
        front_list="$old_list, "
fi

new_list="$front_list'$add_list_id']"
dconf write /org/gnome/terminal/legacy/profiles:/list "$new_list"
dconf write /org/gnome/terminal/legacy/profiles:/default "'$add_list_id'"

chsh -s $(which zsh)

# install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
