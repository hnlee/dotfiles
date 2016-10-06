" Start pathogen (plugin manager)
execute pathogen#infect()

" Turn on rainbow parentheses
let g:rainbow_active = 1

" Indent based on filetype
filetype plugin indent on

" Always show status bar
set laststatus=2

" Show line number
set nu

" Show line and column number in status bar
set ru

" Enable syntax highlighting
syntax enable

" Set encoding and format
set encoding=utf-8
set fileformat=unix

" Tab at four spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" Indent
set autoindent

" Linebreak at 80 columns
set wrap linebreak nolist 
set textwidth=80 

" Highlight matching braces or parentheses
set showmatch

" Highlight search matches
set hlsearch

" Remap keys for exiting insert mode
inoremap fj <esc>
inoremap jf <esc>
inoremap <esc> <nop>

" Toggle in and out of visual mode
vnoremap v <esc>

" Disable arrow keys
noremap <up> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <down> <nop>

" Use Ctrl-i to go to start of line, Ctrl-l to end of line
nnoremap <C-i> ^
nnoremap <C-a> $
vnoremap <C-i> ^
vnoremap <C-a> $

" Flash on error instead of sound
set visualbell

" Show buffer name in title
set title

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Set , as leader key
let mapleader=","

" Start every markdown file in blog directory with template
autocmd BufNewFile ~/hanalee.info/content/blog/*.markdown 0r ~/hanalee.info/content/blog/skeleton.template

" Populate date field automatically
iabbrev <expr> ymd strftime("%Y-%m-%d")

