" Plugins I use
""""""""""""""
call plug#begin()
" Basic Settings
Plug 'vim-test/vim-test'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'Donaldttt/fuzzyy'
Plug 'luochen1990/rainbow'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'LunarWatcher/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Languages
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-snippets'
" Plug 'neoclide/coc-prettier'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'elixir-lang/vim-elixir'
Plug 'jimenezrick/vimerl'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

" Taking notes by using wiki
Plug 'vimwiki/vimwiki'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


call plug#end()
