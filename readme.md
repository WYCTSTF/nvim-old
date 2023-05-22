this neovim configuration use [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage the plugins.

## start

node.js is required.

then may you need to execute `:PackerUpdate` times, and wait [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
and [Mason.nvim](https://github.com/williamboman/mason.nvim) to install the parser and LSP.

telescope.nvim require [fd](https://github.com/sharkdp/fd) and [ripgrep](https://github.com/BurntSushi/ripgrep).

Run `:checkhealth` to check requirements ^_^

## tips.

Specific shortcut key mappings and basic settings can be viewed in /lua/keybindings.lua and /lua/basic.lua

For competitive programming training purposes, I did not use the code completion plugin.

if you need to install haskell-language-server by Mason, GHCup is required.
