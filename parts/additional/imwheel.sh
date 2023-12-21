#!/bin/bash

DIR="$(dirname "$0")"

sudo apt install imwheel -y

mkdir -p ~/.config/systemd/
mkdir -p ~/.config/systemd/user/

cp $DIR/../../lib/imwheel/imwheel.service ~/.config/systemd/user/imwheel.service

systemctl --user daemon-reload imwheel
systemctl --user start imwheel
systemctl --user enable imwheel
