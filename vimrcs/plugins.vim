" Plugins I use
""""""""""""""
call plug#begin('~/.vim/plugged')
" Basic Settings
Plug 'janko-m/vim-test'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'nanotech/jellybeans.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'chun-yang/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc-prettier'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'elixir-lang/vim-elixir'
Plug 'jimenezrick/vimerl'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }



call plug#end()
