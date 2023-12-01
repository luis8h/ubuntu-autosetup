#!/bin/bash

DIR="$(dirname "$0")"

# install utils
sudo apt-get install cifs-utils

# copying the template, credentials have to be filled in manually
cp ./$DIR/../lib/nas-setup/template.smbcredentials ~/.smbcredentials

# line with info of the nas storage - data needs to be changed for other nas
mount_info="//192.168.188.179/cloud8h/ /mnt/data-cloud cifs uid=1000,gid=1000,rw,user,credentials=/home/luis8h/.smbcredentials 0 0"

# Append the line to the /etc/fstab file
echo "$mount_info" | sudo tee -a /etc/fstab > /dev/null
