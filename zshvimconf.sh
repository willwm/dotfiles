#!/bin/bash

# Pre-requisites: curl git zsh vim exuberant-ctags

# Install: oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install: timss/vimconf (https://github.com/timss/vimconf#installation)
mkdir -p ~/.vim/vimconf
git clone https://github.com/timss/vimconf.git ~/.vim/vimconf
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc

# Configure: Open ~/.zshrc for editing then source it
vim ~/.zshrc && source ~/.zshrc