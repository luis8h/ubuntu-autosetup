#!/bin/bash

# install git credential manager
wget "https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.3.2/gcm-linux_amd64.2.3.2.deb" -O /tmp/gcmcore.deb
sudo dpkg -i /tmp/gcmcore.deb
git-credential-manager configure

# Set the credential store to cache
git config --global credential.credentialStore cache

# manual call: git-credential-manager login github
# after that, git will automaticly use it for authentication


