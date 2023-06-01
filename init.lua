require("basic")
require("plugins")
require("keybindings")
require("colorscheme")

require("plugin-config/lualine")
require("plugin-config/nvim-tree")
require("plugin-config/bufferline")
require("plugin-config/nvim-treesitter")
require("plugin-config/telescope")
require('neoscroll').setup()
require("plugin-config/vimtex")
require("plugin-config/ultisnips")

-- LSP
require("mason").setup()
require("lsp/setup")

-- CompetiTest
require("plugin-config/CompetiTest")
