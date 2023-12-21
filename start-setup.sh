#!/bin/sh

echo "setting up ubuntu ..."

DIR="$(dirname "$0")"

for script in $(ls -v "$DIR/parts/default"/[0-9]*.sh); do
	./$script
done

sudo reboot

