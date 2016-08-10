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
set smarttab

" Linebreak at 80 columns
set wrap linebreak nolist 
set textwidth=80 

" Highlight matching braces or parentheses
set showmatch

" Highlight search matches
set hlsearch

" Use ;; to exit insert mode
inoremap ;; <esc>

" Flash on error instead of sound
set visualbell

" Show buffer name in title
set title

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
