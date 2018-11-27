#!/bin/bash

# Pre-requisites: curl git zsh vim exuberant-ctags

# Install: timss/vimconf (https://github.com/timss/vimconf#installation)
mkdir -p ~/.vim/vimconf
git clone https://github.com/timss/vimconf.git ~/.vim/vimconf
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc

# Install: oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"