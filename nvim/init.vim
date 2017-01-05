" Nick Wade's nvimrc
" Prep for Vundle
set nocompatible
filetype off
" Load Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" Load plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

" Detect filetypes and enable syntax highlighting
filetype plugin indent on
syntax on

" Remap the exit key.
inoremap jj <esc>

" Configure tabs/spaces - use spaces, one tab is fource spaces, match current
" file pattern, if my current line is idented match it on the next one.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent

" Don't make a bunch of messy backup files. I should use git more
set nobackup
set nowritebackup
set noswapfile

" Make searching easy - ignore case unless specified, live match highlighting,
" highlight all matches.
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Remap : -> ; to make entering command mode easier.
nnoremap ; :
vnoremap ; :

