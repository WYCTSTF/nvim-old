local packer = require("packer")
packer.startup(
  function(use)
    use 'wbthomason/packer.nvim'
    -- color theme
    use 'marko-cerovac/material.nvim'
    use ({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons"})
    use {'akinsho/bufferline.nvim', requires = {'nvim-tree/nvim-web-devicons', 'moll/vim-bbye'}}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use("folke/tokyonight.nvim")
    -- LSP
    use ("williamboman/mason-lspconfig")
    use ("neovim/nvim-lspconfig")
    use ("williamboman/mason.nvim")
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use "LinArcX/telescope-env.nvim"
    use("glepnir/dashboard-nvim")
    use("ahmedkhalf/project.nvim")
    use("morhetz/gruvbox")
end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

