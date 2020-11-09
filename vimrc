" General 
"""""""""""
set number
set relativenumber
set cursorline
set ruler
set nocompatible
filetype on
filetype plugin on
set noeb
syntax enable
syntax on
set t_Co=256
set showcmd
set ttimeoutlen=0
set mouse=a
map <silent> <C-A> gg v G
set showcmd
set cmdheight=1
set laststatus=2
set history=100
" When adding this vimrc into WSL,
" 'modifiable' occurs error when not set,
" so here add it, you can change this configuration later
set modifiable

let mapleader=","


" Indent
""""""""""
set autoindent
set cindent
set smartindent
set cinoptions=g0,:0,N-s,(0
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=2
set sidescroll=10

" Settings for searching
""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase

" Caches
"""""""""
set noswapfile
set autoread
set autowrite
set confirm

" Encodings
""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" Plugins I use
""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc-prettier'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'chun-yang/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'elixir-lang/vim-elixir'
Plug 'derekwyatt/vim-scala'
Plug 'jimenezrick/vimerl'
Plug 'junegunn/fzf'
Plug 'janko-m/vim-test'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'vim-crystal/vim-crystal'
Plug 'zah/nim.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'

call plug#end()

" Colors
"""""""""""""""
colorscheme DevC++
