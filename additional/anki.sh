#!/bin/bash

sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3 -y
sudo apt install zstd -y
curl https://github.com/ankitects/anki/releases/download/24.04/anki-24.04-linux-qt6.tar.zst

tar xaf ./anki-24.04-linux-qt6.tar.zst
cd anki-2XXX-linux-qt6
sudo ./install.sh
