#!/bin/bash

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/luis8h/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential -y


# sdkman

sudo apt-get install unzip -y
sudo apt-get install zip -y
sudo apt-get install sed -y

sudo apt install curl -y

sudo curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"


# bob

curl https://sh.rustup.rs -sSf | sh

## if it fails here, just close terminal and try again because cargo was installed just before
cargo install --git https://github.com/MordechaiHadad/bob.git


