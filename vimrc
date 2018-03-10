set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

set tabstop=2 
set shiftwidth=2 
set expandtab
set hidden
set backspace=indent,eol,start
set showcmd
set showmode
set showmatch
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set number
set ruler
set incsearch
set hlsearch
set wrap
set laststatus=2
set title
set visualbell
set nobackup
set nowritebackup
set noswapfile

syntax enable
filetype plugin indent on

set t_Co=256
set background=dark
colorscheme Tomorrow-Night

if has('gui_running')
  set guioptions-=T  " no toolbar
  colorscheme Tomorrow-Night  
  set lines=120 columns=108 linespace=0
  set guifont=Source\ Code\ Pro\ 12
endif

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeShowHidden=1

"hide the following
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

"use system clipboard
"set clipboard=unnamedplus

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
