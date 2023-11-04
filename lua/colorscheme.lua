local colorscheme = "space-vim-dark"
vim.cmd('colorscheme '.. colorscheme)

vim.o.background = "dark"
vim.cmd('highlight Normal guibg=NONE ctermbg=None')
vim.cmd('highlight LineNr guibg=NONE ctermbg=None')
vim.cmd('highlight SignColumn guibg=NONE ctermbg=None')

