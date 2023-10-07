#!/bin/sh

echo "setting up ubuntu ..."

DIR="$(dirname "$0")"


sh $DIR/parts/regolith.sh
sh $DIR/parts/general.sh
sh $DIR/parts/terminal.sh


