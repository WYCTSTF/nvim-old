vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	use "morhetz/gruvbox"
	use 'nvim-tree/nvim-tree.lua'
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons', 'moll/vim-bbye'}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
  use { "LinArcX/telescope-env.nvim" }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	}
	use {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use 'kassio/neoterm'
  use {
    'xeluxee/competitest.nvim',
    requires = 'MunifTanjim/nui.nvim',
  }
  -- 平滑滚动
  use 'karb94/neoscroll.nvim'
  use 'lervag/vimtex'
  use {'honza/vim-snippets'}
  use {'SirVer/ultisnips'}
end)

pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

return
