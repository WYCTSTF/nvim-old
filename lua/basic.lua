vim.g.python3_host_prog = "/opt/homebrew/Caskroom/miniconda/base/bin/python"
-- nvim-tree.nvim
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- encoding
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.termguicolors = true

vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ci = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.cmdheight = 2
vim.o.autoread = true
vim.bo.autoread = true
vim.o.whichwrap = '<,>,[,]'
vim.o.hidden = true
vim.o.mouse = "a"
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.wildmenu = true
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 15
vim.o.showtabline = 2
vim.o.showmode = false
