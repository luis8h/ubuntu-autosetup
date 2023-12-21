#!/bin/bash

DIR="$(dirname "$0")"

# install i3wm
sudo apt install i3

cp -r $DIR/../../lib/i3-config/i3 ~/.config/
cp -r $DIR/../../lib/i3-config/i3status ~/.config/


