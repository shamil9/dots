return {
	"echasnovski/mini.indentscope",
	config = function()
		require("mini.indentscope").setup({
			-- Draw options
			draw = {
				animation = require("mini.indentscope").gen_animation.none(),
			},
			symbol = "▏",
		})

		-- Disable indent guides for certain filetypes
		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = {
				"help",
				"startify",
				"aerial",
				"alpha",
				"dashboard",
				"lazy",
				"neogitstatus",
				"NvimTree",
				"neo-tree",
				"Trouble",
			},
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})

		vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
			callback = function()
				vim.b.miniindentscope_disable = false
			end,
		})

		vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}
