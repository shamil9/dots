return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local signs = { Error = " ×", Warn = " ⚠", Hint = "💡", Info = " ℹ" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end

		local lspconfig = require('lspconfig')

		lspconfig.tsserver.setup({})
		lspconfig.vuels.setup({})
		lspconfig.cssls.setup({})
	end
}
