" General tools: search, file pickers, Git, which-key, buffers and calendar.

" Search tools
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'mileszs/ack.vim'

" Use ripgrep as the backend for :Ack (rg --vimgrep is what ack.vim parses).
if executable('rg')
    let g:ackprg = 'rg --vimgrep --no-heading --smart-case'
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Use ripgrep for :Files.  It honors .gitignore, so plugged/ stays out of the
" picker.  Keep a user-provided FZF_DEFAULT_COMMAND intact.
if executable('rg') && empty($FZF_DEFAULT_COMMAND)
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
endif

" Git
Plug 'tpope/vim-fugitive'

" Which key
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKeyVisual'] }

" Explore buffers
Plug 'jlanzarotta/bufexplorer'

" Calendar
Plug 'itchyny/calendar.vim'
