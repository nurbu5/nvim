return {
  "zbirenbaum/copilot.lua",
  enabled = false,
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = "p",
        jump_next = "n",
        accept = "<CR>",
        refresh = "gr",
        open = "<C-a>"
      },
      layout = {
        position = "bottom", -- | top | left | right
        ratio = 0.4
      },
    },
    suggestion = { enabled = false, },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
