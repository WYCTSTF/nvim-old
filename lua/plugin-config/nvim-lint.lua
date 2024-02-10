require('lint').linters_by_ft = {
  python = {'pylint',},
  cpp = {'clangtidy',},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

vim.diagnostic.config({ signs = false }, ns)

local lint_progress = function()
  local linters = require("lint").get_running()
  if #linters == 0 then
      return "󰦕"
  end
  return "󱉶 " .. table.concat(linters, ", ")
end
