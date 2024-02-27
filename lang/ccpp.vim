" Format codes with clang-format
Plug 'rhysd/vim-clang-format'
" clang-format settings
let g:clang_format#code_style='chromium'
autocmd FileType c,cpp ClangFormatAutoEnable

" ALE settings for C/C++
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++17'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''