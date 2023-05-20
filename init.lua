require("basic")
require("plugins")
require("keybindings")
require("colorscheme")

require("plugin-config/lualine")
require("plugin-config/nvim-tree")
require("plugin-config/bufferline")
require("plugin-config/nvim-treesitter")

-- LSP
require("mason").setup()
require("lsp/setup")

-- CompetiTest
require("plugin-config/CompetiTest")
