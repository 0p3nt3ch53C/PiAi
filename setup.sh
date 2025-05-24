#!/bin/bash

# Update server:
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoclean && sudo apt-get autoremove -y

# Install docker:
curl -sSL https://get.docker.com | sh
sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install

curl -fsSL https://ollama.com/install.sh | sh