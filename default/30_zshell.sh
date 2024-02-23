#!/bin/bash

DIR="$(dirname "$0")"

# install
sudo apt install -y git-core zsh curl
./$DIR../lib/terminal-profile/install_zsh.sh

# plugins
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode

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

