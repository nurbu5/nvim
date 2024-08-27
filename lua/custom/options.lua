-- for a list of options and their descriptions:
-- :help option-list

-- to view help for a specific option:
-- :help <option>
-- eg: :help autochdir

local options = {
  autochdir=false,
  autoindent=true,
  autoread=false,
  autowrite=false,
  background="light",
  backup=false,
  binary=false,
  bufhidden="",
  clipboard="unnamed",
  confirm=false,
  cursorcolumn=false,
  cursorline=true,
  endofline=false,
  expandtab=true,
  foldclose="",
  foldexpr = "v:lua.vim.treesitter.foldexpr()",
  foldlevel=0,
  foldlevelstart=1,
  foldmethod="expr",
  foldminlines=2,
  foldopen="",
  grepprg="ag --nogroup --nocolor",
  hidden=true,
  hlsearch=true,
  inccommand="split",
  incsearch=true,
  list=false,
  -- listchars={ tab = '» ', trail = '·', nbsp = '␣' },
  mouse="",
  number=true,
  relativenumber=true,
  scrolloff=3,
  shiftwidth=2,
  showmode=false,
  signcolumn="yes",
  smartindent=true,
  smarttab=true,
  softtabstop=2,
  tabstop=2,
  termguicolors=true,
  verbose=0,
  wildmenu=true,
  -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
  ignorecase=true,
  smartcase=true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
