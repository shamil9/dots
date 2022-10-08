-- Extend LSP configuration
return {
  -- enable servers that you already have installed without mason
  servers = {
    -- "pyright"
  },
  -- easily add or disable built in mappings added during LSP attaching
  mappings = {
    n = {
      -- ["<leader>lf"] = false -- disable formatting keymap
    },
  },
  -- add to the global LSP on_attach function
  -- on_attach = function(client, bufnr)
  -- end,

  -- override the mason server-registration function
  -- server_registration = function(server, opts)
  --   require("lspconfig")[server].setup(opts)
  -- end,

  -- Add overrides for LSP server settings, the keys are the name of the server
  ["server-settings"] = {
    volar = {
      on_attach = function(client) client.server_capabilities.document_formatting = false end,
    },
    stylelint_lsp = {
      on_attach = function(client) client.server_capabilities.document_formatting = false end,
    },
    -- example for addings schemas to yamlls
    -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
    --   settings = {
    --     yaml = {
    --       schemas = {
    --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
    --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
    --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
    --       },
    --     },
    --   },
    -- },
    -- Example disabling formatting for a specific language server
    -- gopls = { -- override table for require("lspconfig").gopls.setup({...})
    --   on_attach = function(client, bufnr)
    --     client.server_capabilities.document_formatting = false
    --   end
    -- }
  },
}
