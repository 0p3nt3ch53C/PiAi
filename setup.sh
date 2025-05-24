#!/bin/bash

# Update server:
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoclean && sudo apt-get autoremove -y

# Install docker:
curl -sSL https://get.docker.com | sh
sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install

# Install ollama: 
curl -fsSL https://ollama.com/install.sh | sh
# NOTE: WARNING: No NVIDIA/AMD GPU detected. Ollama will run in CPU-only mode.

# Install Gemma 3 1B:
ollama run gemma3:1b