"let mapleader=","
" let maplocalleader = "\<Space>"

" Select the whole buffer.
" NOTE: this shadows the default <C-a> (increment number).
nnoremap <silent> <C-A> ggVG
vnoremap <silent> <C-A> ggVG

" Save without leaving the current mode.
" NOTE: if <C-s> freezes the terminal, disable XON/XOFF with: stty -ixon
nnoremap <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <Esc>:update<CR>
inoremap <silent> <C-s> <C-o>:update<CR>

" ALE: LSP navigation and diagnostics.
" NOTE: gd, gr and K shadow Vim's built-in commands.
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <silent> gy :ALEGoToTypeDefinition<CR>
nnoremap <silent> gr :ALEFindReferences<CR>
nnoremap <silent> K  :ALEHover<CR>
nnoremap <silent> <Leader>rn :ALERename<CR>
nnoremap <silent> <Leader>ca :ALECodeAction<CR>
nnoremap <silent> [a :ALEPrevious<CR>
nnoremap <silent> ]a :ALENext<CR>
