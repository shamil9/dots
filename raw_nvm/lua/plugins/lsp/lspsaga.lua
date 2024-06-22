return {
	"nvimdev/lspsaga.nvim",
	event = { "LspAttach" },
	config = function()
		require('lspsaga').setup({
			use_saga_diagnostic_sign = true,
			error_sign = "",
			warn_sign = "",
			hint_sign = "",
			infor_sign = "",
			diagnostic_header_icon = "   ",
			symbol_in_winbar = {
				enable = false
			},
			code_action = {
				keys = {
					quit = '<Esc>'
				}
			},
			rename = {
				keys = {
					quit = '<Esc>'
				}
			}
		})

		local set = vim.keymap.set
		set('n', 'K', ':Lspsaga hover_doc<cr>')
		set('n', '<Leader>la', ':Lspsaga code_action<cr>')
		set('n', '<Leader>lr', ':Lspsaga rename ++project<cr>')
		set('n', '<Leader>lh', ':Lspsaga signature_help<cr>')
	end,
}
