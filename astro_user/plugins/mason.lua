return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "tsserver", "volar", "stylelint_lsp", "eslint", "cssls", "rust_analyzer" },
    },
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettierd", "eslint_d", "stylua", "rustfmt" },
    },
  },
}
