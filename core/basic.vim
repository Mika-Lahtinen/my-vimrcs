" General
"""""""""""
set cursorline
set nocompatible
set clipboard+=unnamed
filetype on
filetype plugin on
set fileformat=unix
set noerrorbells
syntax enable
syntax on
set mouse=a
set showcmd
set cmdheight=1
set history=1024

set nobackup
set nowritebackup
" When adding this vimrc into WSL,
" 'modifiable' occurs error when not set,
" so here add it, you can change this configuration later
set modifiable

" Display
""""""""""
set t_Co=256
set wrap
set wrapmargin=2
set linebreak
set laststatus=2
set ruler
set splitright
set splitbelow
augroup show_line_numbers
    autocmd!
    autocmd BufNewFile,BufRead,BufWrite * :set number
    autocmd InsertEnter * :set relativenumber
    autocmd InsertLeave * :set norelativenumber
augroup end

if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=l
    set guioptions-=b
    set fileformat=unix
    if has('win32') || has('win64')
        set guifont=CaskaydiaCove_NFM:h12
        set guifontwide=Fixedsys:h12
    endif
    if has('linux')
        set guifont=Monospace\ 10
    endif
endif


" Indent
""""""""""
set autoindent
set cindent
set smartindent
set cinoptions=g0,:0,N-s,(0,j1,J1
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=indent,eol,start
set sidescroll=10

" Settings for searching
""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase
set smartcase

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
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" Wild menu
""""""""""""""""
set wildmenu
set wildmode=full
