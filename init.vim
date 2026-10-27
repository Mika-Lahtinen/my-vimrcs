" Alternate entry point (e.g. `vim -u ~/.vim/init.vim`).
" Keep all real settings in vimrc so the two entry points cannot drift.
execute 'source ' . fnameescape(expand('<sfile>:p:h') . '/vimrc')
