#!/bin/bash

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-7.0

sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-7.0

dotnet tool install --global dotnet-ef

sudo apt-get install -y dotnet-sdk-8.0
sudo apt-get install -y aspnetcore-runtime-8.0
