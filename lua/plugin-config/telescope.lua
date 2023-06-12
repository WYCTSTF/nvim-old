require("telescope").setup({
  defaults = {
    initial_mode = "insert",
    file_ignore_patterns = {
       "node_modules", "build", "dist", "yarn.lock"
     },
    mappings = require("keybindings").telescopeList,
  },
  pickers = {
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      theme = "dropdown",
    }
  },
  extensions = {
     -- 扩展插件配置
  },
})
require("telescope").load_extension("env")
