" Display settings with plugins.
" Must be loaded after 'plugins.vim'
""""""""""""""""""""""""""""""""""""

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Devicons
Plug 'ryanoasis/vim-devicons'

" NERDTree
Plug 'preservim/nerdtree'
" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" Colorscheme settings
colorscheme lightning

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='light'
let g:airline_powerline_fonts = 1