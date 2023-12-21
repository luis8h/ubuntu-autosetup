
DIR="$(dirname "$0")"

# powerline is not part of new setup
# ./$DIR/../lib/terminal-profile/install_powerline.sh
./$DIR/../../lib/terminal-profile/install_terminal.sh
./$DIR/../../lib/terminal-profile/install_profile.sh

# change autosuggestion key to ctrl + l
echo "bindkey '^n' autosuggest-accept" >> ~/.zshrc

