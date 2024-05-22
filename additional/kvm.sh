#!/bin/bash

# check if virtualization is enabled
#egrep -c '(vmx|svm)' /proc/cpuinfo

# installation
sudo apt install qemu-kvm qemu-system qemu-utils python3 python3-pip libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y

# verify it is running
#sudo systemctl status libvirtd.service

# start default network
sudo virsh net-start default
# start default network automaticly after reboot
sudo virsh net-autostart default

# add permissions for user
sudo usermod -aG libvirt $USER
sudo usermod -aG libvirt-qemu $USER
sudo usermod -aG kvm $USER
sudo usermod -aG input $USER
sudo usermod -aG disk $USER
