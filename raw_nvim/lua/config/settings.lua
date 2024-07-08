local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.spell = false
opt.signcolumn = "auto"
opt.wrap = false
opt.swapfile = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.laststatus = 2
opt.lazyredraw = false
opt.guicursor = ""
opt.scrolloff = 15
opt.termguicolors = true
opt.signcolumn = 'yes:1'
opt.cmdheight = 0
opt.shortmess:append('I')
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.completeopt = 'menuone,noinsert,noselect'

local g = vim.g
g.mapleader = " "

vim.api.nvim_set_option("clipboard", "unnamed")
vim.bo.commentstring = '//%s'
