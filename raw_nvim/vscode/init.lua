local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local vscode = require('vscode')

vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "

vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
  vscode.with_insert(function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
  end)
end)

vim.keymap.set({ "n", "x" }, "gr", function()
  vscode.action("editor.action.goToReferences")
end)

vim.keymap.set({ "n", "x" }, "<leader>lr", function()
  vscode.action("editor.action.rename")
end)

vim.keymap.set({ "n", "x" }, "<leader>ls", function()
  vscode.action("workbench.action.gotoSymbol")
end)

vim.keymap.set({ "n", "x" }, "<leader>tg", function()
  vscode.action("workbench.action.terminal.toggleTerminal")
end)

vim.keymap.set({ "n", "x" }, "<leader>fw", function()
  vscode.action("workbench.action.findInFiles")
end)

vim.keymap.set({ "n", "x" }, "<leader>ff", function()
  vscode.action("workbench.action.quickOpen")
end)

vim.keymap.set({ "n", "x" }, "<leader>ld", function()
  vscode.action("editor.debug.action.showDebugHover")
end)

vim.keymap.set({ "n", "x" }, "<leader>la", function()
  vscode.action("editor.action.quickFix")
end)

vim.keymap.set({ "n", "x" }, "<leader>ld", function()
  vscode.action("editor.action.showHover")
end)

vim.keymap.set({ "n", "x" }, "<leader>lh", function()
  vscode.action("editor.action.triggerParameterHints")
end)

require("lazy").setup({
  spec = {
      {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
          require("nvim-surround").setup({})
        end
    }
  },
  lockfile = vim.fn.stdpath("config") .. "/vscode/lazy-lock.json",
})
require("lazy").update({ show = false })
