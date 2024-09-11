return {
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			vim.g.codeium_disable_bindings = 1

			vim.keymap.set("i", "<C-a>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-w>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-q>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true, silent = true })
		end,
	},
	{
		"zbirenbaum/copilot.lua",
		enabled = false,
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				server_opts_overrides = {
					trace = "verbose",
					settings = {
						advanced = {
							listCount = 5, -- #completions for panel (default 10)
							inlineSuggestCount = 3, -- #completions for getCompletions (default 3)
						},
					},
				},
				panel = {
					enabled = true,
					auto_refresh = false,
					keymap = {
						jump_prev = "N",
						jump_next = "n",
						accept = "<CR>",
						refresh = "<C-r>",
						open = "<C-s>",
					},
					layout = {
						position = "bottom", -- | top | left | right
						ratio = 0.5,
					},
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					hide_during_completion = true,
					debounce = 75,
					keymap = {
						accept = "<C-a>",
						accept_word = false,
						accept_line = false,
						next = "<C-w>",
						prev = "<C-q>",
						dismiss = "<C-x>",
					},
				},
				filetypes = {
					markdown = true,
					help = false,
					gitcommit = false,
					gitrebase = false,
				},
			})
		end,
	},
}
