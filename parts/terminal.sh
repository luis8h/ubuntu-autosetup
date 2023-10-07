
DIR="$(dirname "$0")"

# install rose pine for gnome terminal
dconf load /org/gnome/terminal/legacy/profiles:/ < $DIR/../lib/rose-pine-terminal/dist/rose-pine.dconf

sh %DIR/../lib/terminal-profile/install_powerline.sh
sh %DIR/../lib/terminal-profile/install_terminal.sh
sh %DIR/../lib/terminal-profile/install_profile.sh
