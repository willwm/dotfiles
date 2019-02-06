#!/bin/bash

# Pre-requisites: curl git vim exuberant-ctags

# Install: timss/vimconf (https://github.com/timss/vimconf#installation)
mkdir -p ~/.vim/vimconf
git clone https://github.com/timss/vimconf.git ~/.vim/vimconf
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc