" Start pathogen (plugin manager)
execute pathogen#infect()

" NerdTREE shortcut
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Wildmenu and wildmode
set wildmenu
set wildignorecase
set wildmode=full

" Netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Indent based on filetype
filetype plugin indent on

" Always show status bar
set laststatus=2
set cmdheight=1

" Show line number
set nu

" Show line and column number in status bar
set ru

" Enable syntax highlighting
syntax enable

" Set colorscheme
colorscheme zenburn

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
set smartindent

" Highlight matching braces or parentheses
set showmatch

" Highlight search matches
set hlsearch

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

" Terraform formatting
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" Disable SQL completion
let g:omni_sql_no_default_maps = 1

" Move lines
nmap <M-j> :m+<CR>
nmap <M-k> :m-2<CR>
vmap <M-k> :m'<-2<CR>gv
vmap <M-j> :m'>+<CR>gv

" Add newline without entering insert mode
nmap <M-o> mno<Esc>`n
nmap <M-O> mnO<Esc>`n

" Autoreload .vimrc on save
augroup myvimrc
    au!
    au BufWritePost .vimrc so $MYVIMRC
augroup END

" [CoC] Use tab for trigger completion with characters ahead and navigate
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" [CoC] Use enter to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" [CoC] GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" [CoC] Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" [CoC] Reduce update time
set updatetime=300

" [CoC] Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
