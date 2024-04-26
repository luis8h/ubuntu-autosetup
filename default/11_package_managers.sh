#!/bin/bash

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
