#!/bin/bash


VERSION="471.0.0"

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${VERSION}-linux-x86_64.tar.gz
sudo tar -xf google-cloud-cli-${VERSION}-linux-x86_64.tar.gz -C /opt/
sudo sh /opt/google-cloud-sdk/install.sh

# init command:
# ./google-cloud-sdk/bin/gcloud init

rm ./google-cloud-cli-${VERSION}-linux-x86_64.tar.gz

