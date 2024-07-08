return {
	"nvimtools/none-ls.nvim",
	event = { "LspAttach" },
	dependencies = { "nvim-lua/plenary.nvim", "nvimtools/none-ls-extras.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				require("none-ls.code_actions.eslint"),
			}
		})
	end,
}
