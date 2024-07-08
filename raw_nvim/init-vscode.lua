local vscode = require('vscode')

vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "

vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
  vscode.with_insert(function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
  end)
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
