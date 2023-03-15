local packer = require("packer")
packer.startup(
  function(use)
    use 'wbthomason/packer.nvim'
    -- color theme
    use 'marko-cerovac/material.nvim'
    use ({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons"})
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
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

