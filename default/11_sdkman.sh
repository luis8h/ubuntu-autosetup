#!/bin/bash

sudo apt-get install unzip -y
sudo apt-get install zip -y
sudo apt-get install sed -y

sudo apt install curl -y

sudo curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"
