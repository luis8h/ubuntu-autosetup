#!/bin/bash


sudo apt-get install sshfs

sudo modprobe fuse

sudo adduser $USER fuse
sudo chown root:fuse /dev/fuse
sudo chmod +x /dev/fusermount

# example command:
# sudo sshfs -o allow_other user@myserver:/home/user/myprojects ~/mount/myprojects
