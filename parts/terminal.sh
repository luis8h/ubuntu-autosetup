
DIR="$(dirname "$0")"

./$DIR/../lib/terminal-profile/install_powerline.sh
./$DIR/../lib/terminal-profile/install_terminal.sh
./$DIR/../lib/terminal-profile/install_profile.sh

# change autosuggestion key to ctrl + l
echo "bindkey '^n' autosuggest-accept" >> ~/.zshrc

# install vim plugin for zshell
git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.zsh-vi-mode
echo "source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh" >> ~/.zshrc

