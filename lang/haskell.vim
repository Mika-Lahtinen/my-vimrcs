" Haskell: vim-polyglot provides syntax, indentation and the ftplugin.
" ALE uses HLS for completion and diagnostics; hlint adds optional hints.

" Prefer the HLS wrapper, which selects the server matching the project's GHC.
" Do not use the `hls` executable name here: on some systems it is an unrelated
" HFS utility, not the Haskell Language Server.
let s:hls_executable = ''

if executable('haskell-language-server-wrapper')
    let s:hls_executable = 'haskell-language-server-wrapper'
elseif executable('haskell-language-server')
    let s:hls_executable = 'haskell-language-server'
endif

if empty(s:hls_executable)
    " Without HLS there is no Haskell completion.  GHC still provides basic
    " diagnostics, and hlint is used when it is installed.
    let g:ale_linters.haskell = ['ghc', 'hlint']
else
    let g:ale_haskell_hls_executable = s:hls_executable
    let g:ale_haskell_hls_config = {'haskell': {'maxCompletions': 250}}
endif

" Use ormolu for formatting on save.  Neoformat skips it when it is missing.
let g:neoformat_enabled_haskell = ['ormolu']

augroup haskell_settings
    autocmd!
    autocmd FileType haskell setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
    " Vim's built-in Haskell ftplugin sets omnifunc to haskellcomplete.  Use
    " ALE's omnifunc so manual <C-x><C-o> completion also goes through HLS.
    autocmd FileType haskell setlocal omnifunc=ale#completion#OmniFunc
augroup END
