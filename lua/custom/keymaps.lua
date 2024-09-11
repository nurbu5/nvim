local defaultOptions = { noremap = true, silent = true }

local function tableMerge(t1, t2)
	local out = {}
	for k, v in pairs(t1) do
		out[k] = v
	end
	for k, v in pairs(t2) do
		out[k] = v
	end
	return out
end

local modeMappings = {
	i = {
		{ "jk", "<Esc>", { desc = "Remap escape to home row on keyboard" } },
	},
	n = {
		{ "<CR>", ":noh<CR><CR>", { desc = "Remove highlighting" } },
		-- Window navigation
		{ "<C-h>", "<C-w>h", { desc = "Move to the window to the left" } },
		{ "<C-j>", "<C-w>j", { desc = "Move to the window below" } },
		{ "<C-k>", "<C-w>k", { desc = "Move to the window above" } },
		{ "<C-l>", "<C-w>l", { desc = "Move to the window to the right" } },
		{
			"<Leader>yrp",
			'<Cmd>let @"=expand("%")<cr><Cmd>let @+=expand("%")<cr>',
			{ desc = "[Y]ank to clipboard [R]elative [P]ath" },
		},
		{
			"<Leader>yfp",
			'<Cmd>let @"=expand("%:p")<cr><Cmd>let @+=expand("%:p")<cr>',
			{ desc = "[Y]ank to clipboard [F]ull [P]ath" },
		},
		{
			"<Leader>yfn",
			'<Cmd>let @"=expand("%:t")<cr><Cmd>let @+=expand("%:t")<cr>',
			{ desc = "[Y]ank to clipboard [F]ile[N]ame" },
		},
	},
	v = {
		{ "jk", "<Esc>", { desc = "Remap escape to home row on keyboard" } },
		{ "J", ":move '>+1<CR>gv-gv", { desc = "Move selected text down" } },
		{ "K", ":move '<-2<CR>gv-gv", { desc = "Move selected text up" } },
	},
}

for mode, mappings in pairs(modeMappings) do
	for _, mapping in ipairs(mappings) do
		local lhs = mapping[1]
		local rhs = mapping[2]
		local options = defaultOptions
		if mapping[3] ~= nil then
			options = tableMerge(defaultOptions, mapping[3])
		end
		vim.api.nvim_set_keymap(mode, lhs, rhs, options)
	end
end
