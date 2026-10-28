# my-vimrcs
My vimrc for development

## Prerequisite
Vim 8+ (9.x recommended).  ALE and Neoformat use external tools when they are
available, for example clangd, rust-analyzer, gopls, pylsp/ruff, elixir_ls,
ocamllsp and solargraph for linting/completion, and clang-format, rustfmt,
gofmt and prettier for formatting.  fzf uses ripgrep (`rg`) for file and text
search when it is installed, and ack.vim also uses ripgrep as its backend.
Missing tools are skipped.

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

## Key mappings
The leader is `\`.  Press it alone to open which-key and discover the available
groups.

| Mapping | Action |
| --- | --- |
| `<Leader>ff` / `<Leader>fg` | fzf files / ripgrep |
| `<Leader>fb` / `<Leader>fr` | buffers / recent files |
| `<Leader>fl` / `<Leader>fw` | lines / windows |
| `<Leader>fh` / `<Leader>fj` | help tags / jumps |
| `<Leader>fm` / `<Leader>fc` | maps / commands |
| `<Leader>tn` / `<Leader>tf` | test nearest / test file |
| `<Leader>ts` / `<Leader>tl` | test suite / last test |
| `<Leader>tv` / `<Leader>tc` | visit test / test class |
| `<Leader>vo` / `<Leader>vf` | toggle Vista / find symbol |
| `<Leader>vs` / `<Leader>vt` | show Vista / Vista TOC |
| `<Leader>rn` / `<Leader>ca` | ALE rename / code action |

`gd`, `gy`, `gr` and `K` are also mapped for ALE navigation, type definition,
references and hover.

## Formatting
C and C++ are formatted on save with clang-format's Microsoft style
(4-space indentation, Allman braces).  The style is explicit, so it overrides a
project `.clang-format`; change `-style=Microsoft` in `core/coding.vim` to
`-style=file` if project-local styles should win.

## Snippets
Snippets are provided by vim-vsnip (pure Vimscript) with friendly-snippets
(JSON data only), so there is no Python or Node dependency.  Expand with
`<C-j>`, expand or jump with `<C-l>`, and jump between placeholders with
`<Tab>` / `<S-Tab>`.  `:VsnipOpen` creates user snippets under `~/.vsnip`.

## Language Support
Syntax and indentation come from vim-polyglot, with dedicated plugins only for
languages it does not cover (Typst, MoonBit, Move).  ALE provides linting,
LSP navigation and completion; Neoformat formats on save.  Configured languages
include C/C++, Rust, Go, Python, Elixir, Erlang, Haskell, Ruby, OCaml, Markdown,
Typst, MoonBit and Move.
