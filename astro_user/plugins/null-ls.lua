return function(config) -- overrides `require("null-ls").setup(config)`
	-- config variable is the default configuration table for the setup functino call
	local null_ls = require("null-ls")
	config.update_in_insert = false
	-- Check supported formatters and linters
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
	config.sources = {
		-- Set a formatter
		-- null_ls.builtins.formatting.eslint_d,
		-- null_ls.builtins.diagnostics.eslint_d,
		-- null_ls.builtins.formatting.prettier.with({
		--   filetypes = {
		--     "javascript",
		--     "typescript",
		--     "css",
		--     "scss",
		--     "html",
		--     "json",
		--     "yaml",
		--     "markdown",
		--     "graphql",
		--     "md",
		--     "txt",
		--   }, -- env = {
		--   --   PRETTIERD_LOCAL_PRETTIER_ONLY = 1,
		--   -- },
		-- }),
		null_ls.builtins.formatting.stylua,
	}
	-- set up null-ls's on_attach function
	-- NOTE: You can remove this on attach function to disable format on save
	config.on_attach = function(client, bufnr)
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- vim.lsp.buf.formatting_sync()
					vim.lsp.buf.format()
				end,
			})
		end
	end
	return config -- return final config table to use in require("null-ls").setup(config)
end
