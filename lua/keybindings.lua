vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)
map("n", "<M-h>", "<C-w>h", opt)
map("n", "<M-j>", "<C-w>j", opt)
map("n", "<M-k>", "<C-w>k", opt)
map("n", "<M-l>", "<C-w>l", opt)

map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)

map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)

map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- insert mode move
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- nvim-tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

-- LSP
-- rename
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
-- code action
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
-- go xx
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
-- diagnostic
map("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
map("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
map("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)

map("n", "<F5>", ":T clang++ -O2 -std=c++17 -fsanitize=address %:p -o %:p:r && %:p:r<CR>", opt)
map("n", "<F6>", ":T clang++ -O2 -std=c++17 -fsanitize=address %:p -o %:p:r && %:p:r < %:p:h/in <CR>", opt)