return {
  ["mfussenegger/nvim-dap"] = { disable = false },
  ["rcarriga/nvim-dap-ui"] = { disable = false },
  ["jayp0521/mason-nvim-dap.nvim"] = { disable = false },
  ---
  require("user.plugins.fzf-lua"),
  ---
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
  -- {
  --   "rebelot/kanagawa.nvim",
  --   config = function()
  --     require("kanagawa").setup({
  --       theme = "wave", -- Load "wave" theme when 'background' option is not set
  --       background = { -- map the value of 'background' option to a theme
  --         dark = "dragon", -- try "dragon" !
  --         light = "lotus",
  --       },
  --     })
  --   end,
  -- },
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
