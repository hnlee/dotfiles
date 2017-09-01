set runtimepath^=~/.vim/bundle/ctrlp.vim

" Start pathogen (plugin manager)
execute pathogen#infect()

" Turn on rainbow parentheses
let g:rainbow_active = 1

" NerdTREE shortcut
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

" Set , as leader key
let mapleader=","

" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Window resizing
noremap <Leader>j <C-w>+
noremap <Leader>k <C-w>-
noremap <Leader>l <C-w>>
noremap <Leader>h <C-w><

" Split shortcuts
set splitright
set splitbelow
noremap <silent> <bar> :vnew<CR>
noremap <silent> - :new<CR>

" Write and close shortcut
noremap <Leader>w :w<CR>
noremap <Leader>W :wq<CR>
noremap <Leader>q <C-w>q
noremap <Leader>Q :q!<CR>

" Remove trailing whitespace
noremap <Leader>s :%s/\s\+$//e<CR>

" Remove trailing whitespace on save
autocmd BufWritePre *.* :%s/\s\+$//e

" Start every markdown file in blog directory with template
autocmd BufNewFile ~/hanalee.info/content/blog/*.markdown 0r ~/hanalee.info/content/blog/skeleton.template

" Populate date field automatically
iabbrev <expr> ymd strftime("%Y-%m-%d")

" Syntax highlighting
au BufRead,BufNewFile *.ru setfiletype ruby
