" Basic Plugins and settings for Programming and coding, with plugins.
" The file must be loaded after 'Plugins.vim' loaded.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ALE -- a typical plugin for coding in Vim.
Plug 'dense-analysis/ale'
" ALE settings
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\    'c': ['clangd', 'clang-format', 'gcc'],
\    'cpp': ['clangd', 'clang-format', 'gcc'],
\    'rust': ['rust-analyzer', 'cargo', 'rustfmt'],
\    'go': ['gopls', 'gofmt'],
\    'python': ['autopep8']
\ }

" Run code test
Plug 'vim-test/vim-test'

" Add comment
Plug 'preservim/nerdcommenter'

" Surrounding edit plugins.
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'LunarWatcher/auto-pairs'

" Format code plugins
Plug 'vim-autoformat/vim-autoformat'
" Auto format settings
au BufWrite * :Autoformat

" Auto completion without LSP
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'

" Tags
Plug 'ludovicchabant/vim-gutentags'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Auto completion in async way
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Async complete settings
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"