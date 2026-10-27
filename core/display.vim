" Display settings with plugins.
" Must be loaded after 'plugins.vim'
""""""""""""""""""""""""""""""""""""

" Startify
" Plug 'mhinz/vim-startify'

" Status line plugins
Plug 'itchyny/lightline.vim'

" Devicons
Plug 'ryanoasis/vim-devicons'

" NERDTree
Plug 'preservim/nerdtree'

" NERDTree settings
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
augroup nerdtree_settings
    autocmd!
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END
let g:NERDTreeWinSize = 20

" Colorscheme settings
colorscheme breeze

" Airline settings
let g:lightline = {
            \ 'colorscheme': 'nord',
            \ }
