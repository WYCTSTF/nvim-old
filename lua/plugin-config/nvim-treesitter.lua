local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("nvim-treesitter not Found!")
  return
end

treesitter.setup({
  ensure_installed = { "json", "cmake", "bash", "vim", "lua", "java", "cpp", "haskell" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
    -- 启用增量选择模块
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<TAB>",
    },
  },
  -- 启用代码缩进模块 (=)
  indent = {
    enable = true,
  },
})
-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99


