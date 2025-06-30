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
			format_on_save = {
				timeout_ms = 500,
			},
		})
	end
}
