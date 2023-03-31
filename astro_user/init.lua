return {
	-- Set colorscheme to use
	colorscheme = "catppuccin-mocha",
	-- colorscheme = "kanagawa-dragon",
	options = require("user.core.options"),
	mappings = require("user.core.mappings"),
	lsp = require("user.config.lsp"),

	diagnostics = {
		update_in_insert = false,
	},


  polish = function()
    require("user.core.commands")
    -- Set key binding
    -- Set autocommands
    vim.api.nvim_create_augroup("packer_conf", { clear = true })
    -- vim.api.nvim_create_autocmd("BufWritePost", {
    --   desc = "Sync packer after modifying plugins.lua",
    --   group = "packer_conf",
    --   pattern = "plugins.lua",
    --   command = "source <afile> | PackerSync",
    -- })
  end,
}
