Plug 'neovimhaskell/haskell-vim'

if executable('haskell-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'haskell-language-server',
        \ 'cmd': {server_info->['haskell-language-server', '--lsp']},
        \ 'whitelist': ['haskell'],
        \ })
endif