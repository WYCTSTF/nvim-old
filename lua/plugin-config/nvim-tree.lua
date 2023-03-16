local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("nvim-tree not Found!")
  return
end

local list_keys = require("keybindings").nvimTreeList
nvim_tree.setup({
-- project plugin 需要这样设置
  update_cwd = true,
  update_focused_file = {
      enable = true,
      update_cwd = true,
  },
  -- 隐藏 .文件 和 node_modules 文件夹
  filters = {
      dotfiles = false,
      custom = { 'node_modules' },
  },
  view = {
    -- 宽度
    width = 40,
    -- 也可以 'right'
    side = 'left',
    -- 隐藏根目录
    hide_root_folder = false,
    -- 自定义列表中快捷键
    mappings = {
      custom_only = false,
      list = list_keys,
    },
    -- 不显示行数
    number = false,
    relativenumber = false,
    -- 显示图标
    signcolumn = 'yes',
  },
  actions = {
    open_file = {
      -- 首次打开大小适配
      resize_window = true,
      -- 打开文件时关闭
      quit_on_open = false,
    },
  },
  system_open = {
    cmd = 'open', -- mac 直接设置为 open
  },
})
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
