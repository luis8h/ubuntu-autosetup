#!/bin/bash

VERSION="24.04"

sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3 -y
sudo apt install zstd -y

wget "https://github.com/ankitects/anki/releases/download/${VERSION}/anki-${VERSION}-linux-qt6.tar.zst"

tar xaf ./anki-${VERSION}-linux-qt6.tar.zst
cd anki-${VERSION}-linux-qt6
sudo ./install.sh

cd ..
rm -r ./anki-${VERSION}-linux-qt6/
rm ./anki-${VERSION}-linux-qt6.tar.zst
