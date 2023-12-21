" LaTeX
Plug 'lervag/vimtex'

" Configs for VimTeX
let g:tex_flavor = 'latex'

let g:vimtex_compiler_latexmk_engines = { '_': '-xelatex' }
let g:vimtex_compiler_latexrun_engines = { '_': '-xelatex' }

let g:vimtex_quickfix_mode = 0

set conceallevel=1
let g:tex_conceal='abdmg'

" autocmd FileType tex call lsp#disable()

if has('win32') || has('win64')
    let g:vimtex_view_method = 'sioyek'
    let g:vimtex_view_sioyek_exe='sioyek.exe'
    let g:vimtex_callback_progpath = 'gvim'
endif