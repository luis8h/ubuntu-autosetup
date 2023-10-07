# Fail on any command.
set -eux pipefail

DIR="$(dirname "$0")"

# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install --user powerline-status
sudo cp $DIR/configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
mkdir ~/.fonts
sudo cp -a $DIR/fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/

echo "end of script powerline"
