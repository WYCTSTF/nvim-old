local packer = require("packer")
packer.startup(
  function(use)
    use 'wbthomason/packer.nvim'
    -- color theme
    use 'marko-cerovac/material.nvim'
    use ({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons"})
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

