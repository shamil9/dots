return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	config = function()
		vim.diagnostic.config({ virtual_text = false })
		require('tiny-inline-diagnostic').setup({
			signs = {
				left = " ",
				right = " ",
				diag = " ",
				arrow = "    ",
				up_arrow = "    ",
				vertical = " │",
				vertical_end = " └"
			},
			options = {
				overflow = {
					mode = "none",
					position = "overlay",
				},
			}
		})
	end
}
