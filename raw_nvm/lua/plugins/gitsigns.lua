return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require('gitsigns').setup({
			numhl = true,
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "▎" },
				topdelete = { text = "契" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
		})
	end
}
