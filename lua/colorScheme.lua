local colorScheme = "material"
local status, _ = pcall(vim.cmd, "colorscheme "..colorScheme)
if not status then
  vim.notify(colorScheme.." not Found!")
  return
end
