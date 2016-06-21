syntax enable
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Theme configuration
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
set background=dark
colorscheme solarized
