" Format codes with clang-format
Plug 'rhysd/vim-clang-format'
" clang-format settings
let g:clang_format#code_style='chromium'
autocmd FileType c,cpp ClangFormatAutoEnable
