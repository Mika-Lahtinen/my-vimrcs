#!/bin/sh
set -e

cd ~/.my-vimrcs

echo '
set runtimepath+=~/.my-vimrcs

source ~/.my-vimrcs/vimrcs/basic.vim
source ~/.my-vimrcs/vimrcs/keybindings.vim
source ~/.my-vimrcs/vimrcs/plugins.vim
source ~/.my-vimrcs/vimrcs/plugins_settings.vim
' > ~/.vimrc