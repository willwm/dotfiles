#!/bin/bash

# See also: https://gist.github.com/willwm/cdecee595f8e9d581fdc4920831019fb

# Package Source: Node 9.x (https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

# Package Source: Yarn (https://yarnpkg.com/lang/en/docs/install/#linux-tab)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Package Source: Microsoft (https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu)
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list)"

# Update package cache, upgrade all packages...
sudo apt update && sudo apt full-upgrade -y

# Install: Development Tools...
sudo apt install -y build-essential git nodejs yarn

# Setup: oh-my-zsh
sudo apt install -y zsh curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install: timss/vimconf (https://github.com/timss/vimconf#installation)
sudo apt install -y vim exuberant-ctags
mkdir -p ~/.vim/vimconf
git clone https://github.com/timss/vimconf.git ~/.vim/vimconf
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc
