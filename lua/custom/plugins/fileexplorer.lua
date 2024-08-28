return {
  'stevearc/oil.nvim',
  opts = {},
  keys = {
    { "-", "<cmd>Oil<cr>", mode = { "n" }, desc = "Open parent directory in oil file explorer/editor" },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
