" Basic Plugins and settings for Programming and coding, with plugins.
" The file must be loaded after 'Plugins.vim' loaded.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ALE -- linting, LSP navigation and completion.
Plug 'dense-analysis/ale'

" Run code test
Plug 'vim-test/vim-test'

" Project manager.
Plug 'tpope/vim-projectionist'

" Add comment
Plug 'preservim/nerdcommenter'

" Vista.vim
Plug 'liuchengxu/vista.vim'

" Surrounding edit plugins.
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'LunarWatcher/auto-pairs'

" Format code
Plug 'sbdchd/neoformat'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'

" Minimap
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Accept the selected completion item with <CR>.  ALE recommends 'noselect',
" so pick the first item before accepting when nothing is selected yet.
inoremap <silent> <expr> <cr> pumvisible()
            \ ? (get(complete_info(['selected']), 'selected', -1) < 0
            \    ? "\<C-n>\<C-y>"
            \    : "\<C-y>")
            \ : "\<cr>"

" ALE settings
let g:ale_linters = {
            \    'c': ['clangd', 'gcc'],
            \    'cpp': ['clangd', 'gcc'],
            \    'rust': ['analyzer', 'cargo'],
            \    'go': ['gopls'],
            \    'python': ['pylsp', 'ruff'],
            \    'elixir': ['elixir_ls'],
            \    'ocaml': ['ocamllsp'],
            \    'ruby': ['solargraph', 'rubocop'],
            \ }
let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 100
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" ALE completion: automatic while typing, or manually with <C-x><C-o>.
set omnifunc=ale#completion#OmniFunc
set completeopt=menu,menuone,preview,noselect,noinsert
set shortmess+=c

" Auto format settings
" Neoformat silently skips formatters that are not installed, so it is safe to
" list more filetypes than you have formatters for. Remove entries you never
" want formatted on save.
" vim-polyglot vendors rust.vim's ftplugin, which can also run rustfmt on save.
" Keep it off so only Neoformat formats Rust.
let g:rustfmt_autosave = 0
let g:neoformat_enabled_c = ['clangformat', 'uncrustify', 'astyle']
let g:neoformat_enabled_cpp = ['clangformat', 'uncrustify', 'astyle']
let g:neoformat_on_save_filetypes = [
            \ 'c', 'cpp', 'rust', 'go', 'python', 'elixir', 'ocaml', 'ruby',
            \ 'erlang', 'haskell',
            \ 'typst', 'markdown', 'tex', 'lua', 'sh', 'zsh',
            \ 'javascript', 'javascriptreact', 'typescript', 'typescriptreact',
            \ 'json', 'jsonc', 'yaml', 'html', 'css', 'scss', 'less',
            \ 'vue', 'svelte', 'astro', 'php', 'java', 'kotlin', 'swift',
            \ 'dart', 'cs', 'fsharp', 'scala', 'sql', 'toml', 'nix'
            \ ]
augroup neoformat_on_save
    autocmd!
    autocmd BufWritePre * if index(g:neoformat_on_save_filetypes, &filetype) >= 0 | Neoformat | endif
augroup END

" Vsnip settings
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
" NOTE: these shadow Vim's s/S commands, so they are disabled by default.
" xmap s <Plug>(vsnip-select-text)
" xmap S <Plug>(vsnip-cut-text)

" Vista settings
let g:vista_default_executive = 'ale'
