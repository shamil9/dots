--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {
  -- Set colorscheme to use
  colorscheme = "catppuccin-mocha",
  options = require("user.core.options"),
  header = require("user.core.header"),
  mappings = require("user.core.mappings"),

  diagnostics = {
    update_in_insert = false,
  },

  -- Configure plugins
  plugins = {
    init = require("user.plugins"),
    heirline = require("user.plugins.heirline"),

    -- All other entries override the require("<key>").setup({...}) call for default plugins
    ["null-ls"] = require("user.plugins.null-ls"),
    treesitter = { -- overrides `require("treesitter").setup(...)`
      ensure_installed = { "lua", "javascript", "typescript", "vue", "html", "scss" },
    },
    -- use mason-lspconfig to configure LSP installations
    ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
      ensure_installed = { "sumneko_lua", "tsserver", "volar", "stylelint_lsp", "eslint" },
    },
    -- use mason-tool-installer to configure DAP/Formatters/Linter installation
    ["mason-tool-installer"] = { -- overrides `require("mason-tool-installer").setup(...)`
      ensure_installed = { "stylua", "prettierd" },
    },
    packer = { -- overrides `require("packer").setup(...)`
      compile_path = vim.fn.stdpath("data") .. "/packer_compiled.lua",
    },
  },

  lsp = require("user.config.lsp"),
  luasnip = require("user.config.luasnip"),
  cmp = require("user.config.cmp"),
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

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}

return config
