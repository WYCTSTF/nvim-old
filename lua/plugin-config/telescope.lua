require("telescope").setup({
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        height = 0.9,
        preview_cutoff = 0,
        width = 0.9,
      },
    },
    initial_mode = "insert",
    file_ignore_patterns = {
      "node_modules", "build", "dist", "yarn.lock"
    },
    mappings = require("keybindings").telescopeList,
  },
  pickers = {
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      theme = "ivy",
      no_ignore = true,
    }
  },
})
