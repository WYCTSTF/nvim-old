local colorScheme = "material"
local status, _ = pcall(vim.cmd, "colorscheme "..colorScheme)
-- klvim.cmd(colorscheme material:)
if not status then
  vim.notify(colorScheme.." not Found!")
  return
end
