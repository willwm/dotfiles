#!/bin/bash

# Upgrade all packages
sudo apt update && sudo apt upgrade -y

# Install most-used packages
sudo apt install build-essential curl wget git git-lfs vim zsh htop mc neofetch
