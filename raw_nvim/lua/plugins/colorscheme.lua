return {
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")

		require("catppuccin").setup({
			no_italic = true,
		})
	end,
}
