local globals = {
	mapleader = " ",
	maplocalleader = " ",
	have_nerd_font = true,
}

for k, v in pairs(globals) do
	vim.g[k] = v
end
