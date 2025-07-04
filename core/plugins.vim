" Plugins I use
""""""""""""""
call plug#begin()
" Basic Settings
runtime! core/display.vim
runtime! core/coding.vim

" Languages
runtime! lang/contracts.vim
runtime! lang/ccpp.vim
runtime! lang/go.vim
runtime! lang/python.vim
runtime! lang/rust.vim
runtime! lang/elixir.vim
" runtime! lang/erlang.vim
" runtime! lang/haskell.vim
" runtime! lang/ocaml.vim
runtime! lang/ruby.vim

runtime! lang/markdown.vim
" runtime! lang/latex.vim
runtime! lang/typst.vim

" Tools
runtime! tools/general.vim
runtime! tools/wiki_note.vim


call plug#end()
