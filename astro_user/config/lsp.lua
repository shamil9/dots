-- Extend LSP configuration
return {
  format_on_save = {
    -- enabled = false, -- enable or disable format on save globally
    allow_filetypes = { -- enable format on save for specified filetypes only
      -- "go",
    },
    ignore_filetypes = { -- disable format on save for specified filetypes
      -- "python",
    },
  },
  setup_handlers = {
    rust_analyzer = function(_, opts)
      require("rust-tools").setup({ server = opts })
    end,
  },
  -- enable servers that you already have installed without mason
  servers = {
    -- "pyright"
  },
  -- easily add or disable built in mappings added during LSP attaching
  mappings = {
    n = {
      ["gr"] = { "<cmd>FzfLua lsp_references<cr>", desc = "Go to reference" },
      ["gd"] = { "<cmd>FzfLua lsp_definitions<cr>", desc = "Go to definition" },
      ["<leader>ls"] = { "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Search document symbols" },
      ["<leader>lR"] = {
        ":lua require('fzf-lua').lsp_definitions({ sync = true, jump_to_single_result = true, jump_to_single_result_action = require('fzf-lua.actions').file_vsplit, })<cr>",
        desc = "Search references",
      },
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
  config = {
    tsserver = {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
      end,
    },
    volar = {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
      end,
    },
    stylelint_lsp = {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
      end,
    },
    sumneko_lua = {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
      end,
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
