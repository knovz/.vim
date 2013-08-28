" break compatibility with vi
set nocompatible

execute pathogen#infect()

" Change leader key 
let mapleader="º"

" buffers can exist in backgroud (no complaining if not saved)
set hidden

" spell check
"set spell
"set spelllang=en

" enable line numbers
set rnu
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" show line and column markers
" set cursorline
" set cursorcolumn

" for coding
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
 
set autoindent
" copy previous indent on enter 
set copyindent
set smartindent

" bakspace over everything in insert mode
set backspace=indent,eol,start


" toggle paste mode (to paste properly indented text)
" nnoremap <F2> :set invpaste paste?<CR>
" set pastetoggle=<F2>
" set showmode
set nopaste " pasting with auto-indent disabled

" highlight
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
 
set incsearch		" incremental search
set hlsearch		" highlights searches

" pressing \<space> clears the search highlights
nmap <silent> <leader><space> :nohlsearch<CR>

" use jj to quickly escape to normal mode while typing 
inoremap jj <ESC>

" hard tabs
set tabstop=4
set softtabstop=4 " makes backspace treat 4 spaces like a tab
set shiftwidth=4 " makes indents 4 spaces wide as well
set expandtab " actually, expand tabs into spaces
" set noexpandtab " don't expand tabs to spaces (cause fuck that)



" save more in undo history
set history=1000
set undolevels=1000

set mouse=a

"syntax enable
set background=dark
colorscheme solarized

"NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.git','\.DS_Store']
map <silent> <leader><leader> :NERDTreeToggle<CR>

"tabnew
nmap <leader>t :tabnew 

set textwidth=80
set colorcolumn=+1,+41
highlight ColorColumn ctermbg=cyan guibg=cyan

"next buffer
map <leader>1 :bn<CR>

"no swap files
set noswapfile
set nobackup
set nowb

"vim-autoclose
"let g:AutoClosePairs_add = "<>"
