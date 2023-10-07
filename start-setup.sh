#!/bin/sh

echo "setting up ubuntu ..."

DIR="$(dirname "$0")"


./$DIR/parts/general.sh
#sh $DIR/parts/regolith.sh
./$DIR/parts/terminal.sh


