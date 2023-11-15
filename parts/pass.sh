#!/bin/bash

DIR="$(dirname "$0")"

# isntalling pass
sudo apt-get install pass

# set default editor to vim
echo "export EDITOR='vim -u NONE -i NONE'" >> ~/.zshrc



