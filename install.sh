#!/bin/sh
set -e

# Install this Vim configuration.
#
# Vim reads ~/.vim/vimrc automatically when ~/.vimrc does not exist, so if the
# repository already lives in ~/.vim there is nothing to link. Otherwise this
# script writes a small ~/.vimrc that adds the repository to 'runtimepath'.

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if [ -e "$HOME/.vimrc" ]; then
    echo "~/.vimrc already exists; not overwriting it." >&2
    if [ "$repo_dir" != "$HOME/.vim" ]; then
        echo "Add these lines to ~/.vimrc manually:" >&2
        printf "execute 'set runtimepath+=' . fnameescape('%s')\n" "$repo_dir" >&2
        printf "execute 'source ' . fnameescape('%s/vimrc')\n" "$repo_dir" >&2
    fi
    exit 1
fi

if [ "$repo_dir" != "$HOME/.vim" ]; then
    {
        printf "execute 'set runtimepath+=' . fnameescape('%s')\n" "$repo_dir"
        printf "execute 'source ' . fnameescape('%s/vimrc')\n" "$repo_dir"
    } > "$HOME/.vimrc"
    echo "Wrote ~/.vimrc"
fi

echo "Open Vim and run :PlugInstall to install the plugins."
