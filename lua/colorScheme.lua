local colorScheme = "gruvbox"
local status, _ = pcall(vim.cmd, "colorscheme "..colorScheme)
local status_1, _1 = pcall(vim.cmd, "set background=dark")
local status_2, _2 = pcall(vim.cmd, "highlight Normal guibg=NONE ctermbg=None")
-- klvim.cmd(colorscheme material:)
if not status then
  vim.notify(colorScheme.." not Found!")
  return
end
