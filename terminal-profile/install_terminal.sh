# Fail on any command.

# Install ZSH


# Fail on any command.
#set -eux pipefail

# Install ZSH
sudo apt install -y git-core zsh curl

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
(sh install.sh)

# Set ZSH as the default shell for the current user
#chsh -s $(which zsh)

echo "end of script"

