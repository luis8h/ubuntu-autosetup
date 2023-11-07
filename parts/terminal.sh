
DIR="$(dirname "$0")"

./$DIR/../lib/terminal-profile/install_powerline.sh
./$DIR/../lib/terminal-profile/install_terminal.sh
./$DIR/../lib/terminal-profile/install_profile.sh

# change autosuggestion key to ctrl + l
echo "bindkey '^l' autosuggest-accept" >> ~/.zshrc

