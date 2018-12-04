#!/bin/bash

sudo apt update && sudo apt full-upgrade

sudo apt install git git-lfs vim zsh htop mc powertop thermald pandoc

# https://github.com/teejee2008/ukuu
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install ukuu
