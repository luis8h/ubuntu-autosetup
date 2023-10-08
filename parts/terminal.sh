
DIR="$(dirname "$0")"

# install rose pine for gnome terminal
dconf load /org/gnome/terminal/legacy/profiles:/ < $DIR/../lib/rose-pine-terminal/dist/rose-pine.dconf

./$DIR/../lib/terminal-profile/install_powerline.sh
./$DIR/../lib/terminal-profile/install_terminal.sh
./$DIR/../lib/terminal-profile/install_profile.sh

#correct color 8 in the pallete
dconf write /org/gnome/terminal/legacy/profiles:/:20973b0f-a7cb-4fdd-bdfc-53cff02014c8/palette "['rgb(38,35,58)', 'rgb(235,111,146)', 'rgb(49,116,143)', 'rgb(246,193,119)', 'rgb(156,207,216)', 'rgb(196,167,231)', 'rgb(235,188,186)', '#EBBCBA', 'rgb(235,188,186)', 'rgb(235,111,146)', 'rgb(49,116,143)', 'rgb(246,193,119)', 'rgb(156,207,216)', 'rgb(196,167,231)', 'rgb(235,188,186)', 'rgb(224,222,244)']"

