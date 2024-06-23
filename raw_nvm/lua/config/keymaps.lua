local set = vim.keymap.set

set('n', '<Leader>w', '<cmd>w<cr>')
set('n', '<Leader>q', '<cmd>q<cr>')
set('n', '<Leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>')
