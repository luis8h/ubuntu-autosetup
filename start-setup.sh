#!/bin/sh

echo "setting up ubuntu ..."

DIR="$(dirname "$0")"


./$DIR/parts/general.sh
./$DIR/parts/terminal.sh
./$DIR/parts/imwheel.sh
./$DIR/parts/nvim.sh
./$DIR/parts/tmux.sh
./$DIR/parts/regolith.sh
./$DIR/parts/docker.sh
./$DIR/parts/nodejs.sh

sudo reboot

