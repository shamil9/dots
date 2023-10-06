return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "tsserver", "volar", "stylelint_lsp", "eslint", "cssls" },
    },
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettierd", "stylua" },
    },
  },
}
