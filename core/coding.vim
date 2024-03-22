" Basic Plugins and settings for Programming and coding, with plugins.
" The file must be loaded after 'Plugins.vim' loaded.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ALE -- a typical plugin for coding in Vim.
Plug 'dense-analysis/ale'

" Run code test
Plug 'vim-test/vim-test'

" Add comment
Plug 'preservim/nerdcommenter'

" Vista.vim
Plug 'liuchengxu/vista.vim'

" Surrounding edit plugins.
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'LunarWatcher/auto-pairs'

" Format code plugins
Plug 'vim-autoformat/vim-autoformat'

" Auto completion without LSP
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'

" Tags
Plug 'ludovicchabant/vim-gutentags'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto completion in async way
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" Minimap
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Async complete settings
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" ALE settings
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
                  \    'c': ['clangd', 'clang-format', 'gcc'],
                  \    'cpp': ['clangd', 'clang-format', 'gcc'],
                  \    'rust': ['rust-analyzer', 'cargo', 'rustfmt'],
                  \    'go': ['gopls', 'gofmt'],
                  \    'python': ['autopep8'],
                  \    'haskell': ['hls']
                  \ }
let g:ale_completion_enabled = 1
" let g:ale_disable_lsp = 1
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" Auto format settings
au BufWrite * :Autoformat

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" LSP settings
autocmd FileType vim call lsp#disable()

" Lightweight auto complete
let g:apc_enable_ft = {'text':1, 'markdown':1, 'python':1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect,noinsert
set shortmess+=c

" Coc.nvim settings
" The following settings are spring from Coc.nvim official document.
" Global extexsions
" let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-ultisnips']
" GoTo code navigation
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Gutentags settings
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif