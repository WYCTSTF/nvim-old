require("basic")
require("plugins")
require("keybindings")
require("colorscheme")

require("plugin-config/nvim-tree")
require("plugin-config/lualine")
require("plugin-config/bufferline")
-- require("plugin-config/nvim-treesitter")
require("plugin-config/telescope")
require("plugin-config/vimtex")
require("plugin-config/ultisnips")

require('transparent').clear_prefix('lualine')

-- LSP
require("mason").setup()
require("lsp/setup")

-- Linter
require'plugin-config/nvim-lint'

-- DAP
require("dap/nvim-dap")
require("dap/dapui")
require("dap/nvim-dap-virtual-text")
