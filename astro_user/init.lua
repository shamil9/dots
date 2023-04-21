return {
  -- Set colorscheme to use
  colorscheme = "catppuccin-mocha",
  -- colorscheme = "kanagawa-dragon",
  options = require("user.core.options"),
  mappings = require("user.core.mappings"),
  lsp = require("user.config.lsp"),
  diagnostics = {
    update_in_insert = false,
  },
  polish = function()
    require("user.core.commands")
  end,
}
