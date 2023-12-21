" Display settings with plugins.
" Must be loaded after 'plugins.vim'
""""""""""""""""""""""""""""""""""""

" Startify
Plug 'mhinz/vim-startify'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Devicons
Plug 'ryanoasis/vim-devicons'

" NERDTree
Plug 'preservim/nerdtree'

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20

" Colorscheme settings
colorscheme valloric

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
let g:airline_powerline_fonts = 1
