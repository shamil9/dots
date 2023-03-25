--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {
  -- Set colorscheme to use
  colorscheme = "catppuccin-mocha",
  -- colorscheme = "kanagawa-dragon",
  options = require("user.core.options"),
  header = require("user.core.header"),
  mappings = require("user.core.mappings"),

  diagnostics = {
    update_in_insert = false,
  },

  -- Configure plugins
  plugins = {
    init = require("user.plugins"),

    ["null-ls"] = require("user.plugins.null-ls"),
    heirline = require("user.plugins.heirline"),
    cmp = require("user.plugins.cmp"),

    treesitter = { -- overrides `require("treesitter").setup(...)`
      ensure_installed = { "lua", "javascript", "typescript", "vue", "html", "scss" },
      indent = {
        enable = true,
      },
    },

    ["mason-lspconfig"] = {
      ensure_installed = { "sumneko_lua", "tsserver", "volar", "stylelint_lsp", "eslint" },
    },

    ["mason-tool-installer"] = {
      ensure_installed = { "stylua", "prettierd" },
    },

    packer = {
      compile_path = vim.fn.stdpath("data") .. "/packer_compiled.lua",
    },
  },

  luasnip = require("user.config.luasnip"),
  lsp = require("user.config.lsp"),
  ["which-key"] = require("user.config.whichkey"),

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    require("user.core.commands")
    -- Set key binding
    -- Set autocommands
    vim.api.nvim_create_augroup("packer_conf", { clear = true })
    -- vim.api.nvim_create_autocmd("BufWritePost", {
    --   desc = "Sync packer after modifying plugins.lua",
    --   group = "packer_conf",
    --   pattern = "plugins.lua",
    --   command = "source <afile> | PackerSync",
    -- })
  end,
}

return config
