local set = vim.keymap.set

set('n', '<Leader>w', '<cmd>w<cr>')
set('n', '<Leader>q', '<cmd>q<cr>')
set('n', '<Leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>')
set('n', '<Leader>ld', '<cmd>lua vim.diagnostic.open_float()<cr>')
set('n', 'H', '<cmd>:bp<cr>')
set('n', 'L', '<cmd>:bn<cr>')
set('n', '<Leader>c', '<cmd>:bd<cr>')
set('n', '<Leader>pu', function()
	local a = require('plenary.async')
	a.run(function()
		require("lazy").update()
	end)

	a.run(function()
		vim.api.nvim_exec('MasonUpdate', '')
	end)
end)
