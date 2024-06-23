return {
	"stevearc/conform.nvim",
	event = { "LspAttach" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettierd" } },
				typescript = { { "prettierd" } },
				vue = { { "prettierd" } },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end
}
