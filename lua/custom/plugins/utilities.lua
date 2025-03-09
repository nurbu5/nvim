return {
	-- Substitute while matching case
	-- Read `:help abolish` for more info
	-- Also change casing on a variable using shortcut (eg crs)
	{ "tpope/vim-abolish" },
	-- Used to prettify the command section, messages, and popups
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				command_palette = false, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
		},
    -- stylua: ignore
    keys = {
      { "<leader>m", "", desc = "[M]essages"},
      { "<leader>ml", function() require("noice").cmd("last") end, desc = "[M]essages [L]ast" },
      { "<leader>mh", function() require("noice").cmd("history") end, desc = "[M]essages [H]istory" },
      { "<leader>ma", function() require("noice").cmd("all") end, desc = "[M]essages [A]ll" },
      { "<leader>md", function() require("noice").cmd("dismiss") end, desc = "[M]essages [D]ismiss All" },
      { "<leader>ms", function() require("noice").cmd("pick") end, desc = "[M]essages [S]earch" },
    },
		config = function(_, opts)
			-- HACK: noice shows messages from before it was enabled,
			-- but this is not ideal when Lazy is installing plugins,
			-- so clear the messages in this case.
			if vim.o.filetype == "lazy" then
				vim.cmd([[messages clear]])
			end
			require("noice").setup(opts)
		end,
	},
}
