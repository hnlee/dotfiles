" Always show status bar
set laststatus=2

" Show line number
set nu

" Show line and column number in status bar
set ru

" Enable syntax highlighting
syntax enable

" Tab at four spaces
set expandtab
set tabstop=4
set shiftwidth=4

" Linebreak at 80 columns
set lbr
set tw=80

" For vim-R plugin
set nocompatible
filetype plugin on
filetype indent on
let vimrplugin_tmux = 0
