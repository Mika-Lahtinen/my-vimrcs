" Some settings for plugins that can't set into Vim-plug scope.

" Async completes settings
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
"         \ 'name': 'ultisnips',
"         \ 'allowlist': ['*'],
"         \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
"         \ }))
