set nocompatible

syntax enable
filetype plugin indent on

set number
set laststatus=2
set visualbell

set tabstop=2 
set shiftwidth=2 
set expandtab
set wrap
set backspace=indent,eol,start

set ignorecase
set smartcase
set incsearch
set hlsearch

set nobackup
set nowritebackup
set noswapfile

set path+=**

set termguicolors
set background=light
colorscheme Tomorrow-Night

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <C-p> :Files<Cr>
nnoremap <C-@> :Rg<Cr>

