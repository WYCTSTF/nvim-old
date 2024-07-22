local util = require "formatter.util"

require("formatter").setup( {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
          },
          stdin = true,
          try_node_modules = true,
        }
      end
    }
  }
})
