#!/bin/bash


sudo apt-get install sshfs

sudo modprobe fuse

sudo adduser $USER fuse
sudo chown root:fuse /dev/fuse
sudo chmod +x /dev/fusermount

# example command:
# sshfs maythux@192.168.xx.xx:/home/maythuxServ/Mounted ~/remoteDir
