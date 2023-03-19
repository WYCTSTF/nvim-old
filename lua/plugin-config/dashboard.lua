local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("dashboard not Found!")
  return
end

db.setup({
  theme="doom",
  config = {
    header = {
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
      [[  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
      [[  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
      [[  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
      [[  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
      [[  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
    },
    center = {
      {
        icon = "  ",
        desc = "Projects                            ",
        key = 'p',
        action = "Telescope projects",
      },
      {
        icon = "  ",
        desc = "Recently files                      ",
        key = 'f',
        action = "Telescope oldfiles",
      },
      {
        icon = "  ",
        desc = "Edit keybindings                    ",
        key = 'e',
        action = "edit ~/.config/nvim/lua/keybindings.lua",
      },
      {
        icon = "  ",
        desc = "Edit Projects                       ",
        key = 'E',
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
      },
    },
    footer = {
      "双叶一下，你就知道",
    }
  }
})
