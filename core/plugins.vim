" Plugins I use
""""""""""""""
call plug#begin()
" Basic Settings
runtime! core/display.vim
runtime! core/coding.vim

" Languages
" Syntax, indent and ftplugin support for most languages comes from
" vim-polyglot. Only load files for languages polyglot does not cover or for
" settings that are specific to this configuration.
runtime! lang/contracts.vim
runtime! lang/ccpp.vim
runtime! lang/go.vim
runtime! lang/python.vim
runtime! lang/moonbit.vim

runtime! lang/markdown.vim
" runtime! lang/latex.vim
runtime! lang/typst.vim

" Tools
runtime! tools/general.vim
runtime! tools/wiki_note.vim


call plug#end()
