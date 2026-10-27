# my-vimrcs
My vimrc for development

## Prerequisite
Vim 8+ (9.x recommended).  ALE and Neoformat use external tools when they are
available, for example clangd, rust-analyzer, gopls, pylsp/ruff, elixir_ls,
ocamllsp and solargraph for linting/completion, and clang-format, rustfmt,
gofmt and prettier for formatting.  Missing tools are skipped.

## How to use it
1. Clone the repository to your PC and install by the following command:

*Linux/MacOS*
```
git clone --depth=1 https://github.com/Mika-Lahtinen/my-vimrcs.git ~/.vim
```

*Microsoft Windows*
```
git clone --depth=1 https://github.com/Mika-Lahtinen/my-vimrcs.git $HOME/vimfiles
```

2. Open Vim, type ":PlugInstall"
3. Have fun typing.

## Language Support
Syntax and indentation come from vim-polyglot, with dedicated plugins only for
languages it does not cover (Typst, MoonBit, Move).  ALE provides linting,
LSP navigation and completion; Neoformat formats on save.  Configured languages
include C/C++, Rust, Go, Python, Elixir, Erlang, Haskell, Ruby, OCaml, Markdown,
Typst, MoonBit and Move.
