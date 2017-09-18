#!/bin/bash

# Install homebrew (https://brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install oh-my-zsh (http://ohmyz.sh)
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Install vimconf (https://github.com/timss/vimconf)
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
mkdir ~/.vim && cd ~/.vim
git clone https://github.com/timss/vimconf.git
ln -s ~/.vim/vimconf/.vimrc ~/.vimrc