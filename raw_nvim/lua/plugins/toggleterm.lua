return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 50,
			shell = 'fish'
		})

		local Terminal = require('toggleterm.terminal').Terminal
		local lazygit  = Terminal:new {
			cmd = "lazygit",
			display_name = "lazygit",
			direction = "horizontal",
			close_on_exit = true,
			hidden = true,
		}

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm size=40<CR>", { noremap = true, silent = true })
	end
}
