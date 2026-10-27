" Taking notes by using wiki
Plug 'vimwiki/vimwiki'
Plug 'patrickdavey/vimwiki_markdown'

" Please add your configurations below after installing plugins.
" let g:vimwiki_list = [{'path': '~/vimwiki/',
"                       \ 'syntax': 'markdown', 'ext': 'md'}]

" Do not turn every .md/.mkdn file outside a configured wiki into a temporary
" wiki; otherwise vimwiki hijacks the markdown filetype.
let g:vimwiki_global_ext = 0
