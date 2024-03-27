#!/bin/bash

sudo apt install curl -y

sudo curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"
