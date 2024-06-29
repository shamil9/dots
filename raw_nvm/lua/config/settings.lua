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

local g = vim.g
g.mapleader = " "
