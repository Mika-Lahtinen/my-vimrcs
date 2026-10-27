" vim-polyglot provides Go syntax and indent but no ftplugin, so keep the
" essentials that vim-go used to provide.
augroup go_settings
    autocmd!
    autocmd FileType go setlocal noexpandtab
    autocmd FileType go setlocal comments=s1:/*,mb:*,ex:*/,:// commentstring=//\ %s
    autocmd FileType go setlocal formatoptions-=t
    autocmd FileType go compiler go
augroup END
