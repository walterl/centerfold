# CenterFold

This [Neovim](https://neovim.io/) plugin adds the `:CenterFold` command that
will center the last visual selection, opening all folds under the cursor,
recursively.

## Installation

I recommend installing it with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'walterl/centerfold'
```

## Usage

This is useful to quickly select and center a block of code. For example, the
following mapping will center the top-level Clojure form the cursor is in
(requires [vim-sexp](https://github.com/guns/vim-sexp)):

```vim
nmap <silent> <Leader>jj vaF:CenterFold<CR>
```

## Background

This is my first Neovim plugin written in [Fennel](https://fennel-lang.org/), using [Aniseed](https://github.com/Olical/aniseed).

## License

[MIT](./LICENSE.md)
