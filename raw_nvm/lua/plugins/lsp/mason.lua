return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"williamboman/mason.nvim",
			config = function()
				require("mason").setup()
			end
		},
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = { "tsserver", "vuels", "cssls" },
		})
	end
}
