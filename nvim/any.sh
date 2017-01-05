#!/bin/sh
# nvim
# Configure nvim.
mkdir -p ~/.config/nvim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
mkdir -p ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim
