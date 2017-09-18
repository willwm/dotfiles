#!/bin/bash

# Package Source: Node 8.x (https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# Package Source: Microsoft (https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu)
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list)"

# Update package cache, upgrade all packages...
sudo apt update && sudo apt full-upgrade -y

# Install: Development Tools...
sudo apt install -y build-essential git nodejs ruby ruby-dev

# Setup: oh-my-zsh
sudo apt install -y zsh curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install: timss/vimconf (https://github.com/timss/vimconf#installation)
sudo apt install -y vim exuberant-ctags
mkdir -p ~/.vim/vimconf
git clone https://github.com/timss/vimconf.git ~/.vim/vimconf
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc