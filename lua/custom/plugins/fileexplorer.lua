return {
  'stevearc/oil.nvim',
  opts = {},
  keys = {
    { "-", mode = { "n" }, "<cmd>Oil<cr>", desc = "Open parent directory in oil file explorer/editor" },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
