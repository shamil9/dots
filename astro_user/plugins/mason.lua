return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua-language-server", "tsserver", "volar", "stylelint_lsp", "eslint" },
    },
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettierd", "eslint_d", "stylua" },
    },
  },
}
