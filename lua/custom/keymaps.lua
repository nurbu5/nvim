local defaultOptions = { noremap = true, silent = true }

local modeMappings = {
  i = {
    {"jk", "<Esc>"},
  },
  n = {
    {"<CR>", ":noh<CR>"},
    -- Window navigation
    {"<C-h>", "<C-w>h"},
    {"<C-j>", "<C-w>j"},
    {"<C-k>", "<C-w>k"},
    {"<C-l>", "<C-w>l"},
  },
  v = {
    {"jk", "<Esc>"},
    -- Move text up and down
    {"J", ":move '>+1<CR>gv-gv"},
    {"K", ":move '<-2<CR>gv-gv"},
  },
}

for mode, mappings in pairs(modeMappings) do
  for _, mapping in ipairs(mappings) do
    local lhs = mapping[1]
    local rhs = mapping[2]
    vim.api.nvim_set_keymap(mode, lhs, rhs, defaultOptions)
  end
end

