local set = vim.opt
-- cursor can be positioned where there is no actual character.
-- set.virtualedit = 'all'
set.showbreak = '↪'
set.nu = true
set.rnu = true
set.ts = 2
set.sw = 2
set.scrolloff = 5
set.autoread = true
set.incsearch = true
set.whichwrap = '<,>,[,]'
set.backspace = { 'indent', 'eol', 'start' }
set.backup = false
set.writebackup = false
set.swapfile = false
-- set.mouse = "a"
set.termguicolors = true
set.wildmenu = true
set.showmode = false
set.pumheight = 10
set.splitbelow = true
set.splitright = true
set.expandtab = true
set.ignorecase = true
set.guicursor = "n-v-c-sm:block,i-ci-ve:hor20,r-cr-o:hor20"

set.timeout = true
-- Time in milliseconds to wait for a mapped sequence to complete.
set.timeoutlen = 400
--  Time in milliseconds to wait for a key code sequence to complete. Also
-- 	used for CTRL-\ CTRL-N and CTRL-\ CTRL-G when part of a command has
-- 	been typed.
set.ttimeoutlen = 400
set.shell = "/opt/homebrew/bin/bash"
