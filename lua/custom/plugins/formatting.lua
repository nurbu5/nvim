return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- Conform will run multiple formatters sequentially
			-- You can customize some of the format options for the filetype (:help conform.format)
			-- Conform will run the first available formatter
			lua = { "stylua" },
			go = { "gofmt", "staticcheck" },
			python = { "isort", "black" },
			ruby = { "rubocop" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		formatters = {
			gofmt = {
				prepend_args = { "-s" },
			},
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
