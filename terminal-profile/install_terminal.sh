# Fail on any command.

# Install ZSH


# Fail on any command.
#set -eux pipefail

# Install ZSH
sudo apt install -y git-core zsh curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set ZSH as the default shell for the current user
chsh -s $(which zsh)

echo "end of script"

