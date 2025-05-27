Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

""" Haskell LSP settings
if executable('haskell-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'haskell-language-server',
        \ 'cmd': {server_info->['haskell-language-server', '--lsp']},
        \ 'whitelist': ['haskell'],
        \ })
endif

""" Hindent settings
let g:hindent_on_save = 1
let g:hindent_indent_size = 4
