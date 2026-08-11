#!/usr/bin/env bash

echo "Installing JetBrains Mono (and JetBrains Mono Nerd Font)..."

# Install JetBrainsMono
sudo apt update
sudo apt install -y fonts-jetbrains-mono

# Install JetBrainsMono Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono
rm JetBrainsMono.zip
fc-cache -fv