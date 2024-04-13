#!/bin/bash

VERSION="471.0.0"

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${VERSION}-linux-x86_64.tar.gz
tar -xf google-cloud-cli-${VERSION}-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh

# init command:
./google-cloud-sdk/bin/gcloud init

rm -r ./google-cloud-sdk/
rm ./google-cloud-cli-${VERSION}-linux-x86_64.tar.gz

