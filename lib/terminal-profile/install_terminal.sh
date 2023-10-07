# Fail on any command.

# Install ZSH


# Fail on any command.
set -eux pipefail

# Install ZSH
sudo apt install -y git-core zsh curl

DIR="$(dirname "$0")"
./$DIR/install_zsh.sh

# Set ZSH as the default shell for the current user

echo "end of script"

