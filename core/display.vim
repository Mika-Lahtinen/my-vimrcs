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
map <C-t> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinSize=20

" Colorscheme settings
colorscheme habiLight

" Airline settings
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
