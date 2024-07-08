return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'BufEnter',
	config = function()
		require("bufferline").setup({})
	end
}
