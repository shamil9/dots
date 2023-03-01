return {
  ["mfussenegger/nvim-dap"] = { disable = false },
  ["rcarriga/nvim-dap-ui"] = { disable = false },
  ["jayp0521/mason-nvim-dap.nvim"] = { disable = false },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        write_all_buffers = true,
        trigger_events = { "FocusLost" },
      })
    end,
  },
  {
    "echasnovski/mini.surround",
    config = function()
      require("mini.surround").setup({})
    end,
  },
  { "echasnovski/mini.move" },
  { "gpanders/editorconfig.nvim" },
  { "rebelot/kanagawa.nvim" },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
        no_italic = true,
      })
    end,
  },
  { "EdenEast/nightfox.nvim" },
  { "ggandor/leap.nvim" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
}
