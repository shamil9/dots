local config = {
  colorscheme = "nordfox",
  header = require "user.core.header",
  enabled = require "user.core.default_plugins",
  ui = require "user.core.ui",
  plugins = require "user.plugins.plugins",
  luasnip = require "user.plugins.luasnip",
  ["which-key"] = require "user.plugins.which-key",
  lsp = require "user.plugins.lsp",
  diagnostics = require "user.core.diagnostics",
  ["null-ls"] = require "user.plugins.null-ls",
  polish = require "user.core.polish",
}
return config
