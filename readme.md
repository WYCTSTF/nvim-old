this neovim configuration use [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage the plugins.

## start

then may you need to execute `:PackerUpdate` several times, and wait [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
and [Mason.nvim](https://github.com/williamboman/mason.nvim) to install the parser and LSP.

telescope.nvim require [fd](github.com/sharkdp/fd) and [ripgrep](github.com/BurntSushi/ripgrep).

## tips.

Specific shortcut key mappings and basic settings can be viewed in /lua/keybindings.lua and /lua/basic.lua

For competitive programming training purposes, I did not use the code completion plugin.
