return {
	"mfussenegger/nvim-lint",
	event = { "LspAttach" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			vue = { "eslint_d", "stylelint" },
			scss = { "stylelint" },
			css = { "stylelint" },
		}

		lint.try_lint()

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end
}
