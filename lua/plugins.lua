vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- packer, plugin manager
  use 'wbthomason/packer.nvim'
  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- Theme
  use({ 'projekt0n/github-nvim-theme' })
  -- File Explorer
  use 'nvim-tree/nvim-tree.lua'
  -- buffer
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons', 'moll/vim-bbye' }
  -- a highly extendable fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- LSP
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  -- Linter
  use 'mfussenegger/nvim-lint'
  -- Formatter
  require('packer').use { 'mhartington/formatter.nvim' }
  use 'lervag/vimtex'
  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' }
  use 'shaunsingh/nord.nvim'
  -- use 'mfussenegger/nvim-dap'
  -- use 'theHamsta/nvim-dap-virtual-text'
  -- use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use 'xiyaowong/transparent.nvim'
end)

-- pcall(
--   vim.cmd,
--   [[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
--   ]]
-- )

return
