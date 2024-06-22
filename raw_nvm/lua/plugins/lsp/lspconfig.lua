return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lspconfig = require('lspconfig')

		lspconfig.tsserver.setup({})
		lspconfig.vuels.setup({})
		lspconfig.cssls.setup({})
	end
}
