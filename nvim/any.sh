#!/bin/sh
# nvim
# Configure nvim.
mkdir -p ~/.config/nvim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
mkdir -p ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim
nvim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --racer-completer
cd -
ln -s $PWD/ycm_extra_conf.py ~/.ycm_extra_conf.py

