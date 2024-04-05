#!/bin/bash

sudo apt install software-properties-common -y
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt update -y
sudo apt install virtualbox-7.0

wget https://download.virtualbox.org/virtualbox/7.0.14/Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack

rm Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack
