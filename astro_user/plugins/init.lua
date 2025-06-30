return {
  { "mfussenegger/nvim-dap", enabled = false },
  { "rcarriga/nvim-dap-ui", enabled = false },
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "stevearc/aerial.nvim", enabled = false },
  { "goolord/alpha-nvim", enabled = false },

  ---
  -- {
  --   "nvimdev/guard.nvim",
  --   -- Builtin configuration, optional
  --   dependencies = {
  --     "nvimdev/guard-collection",
  --   },
  --   lazy = false,
  --   config = function()
  --     local ft = require("guard.filetype")
  --     ft("lua"):fmt("stylua")
  --     ft("typescript,javascript,typescriptreact,vue"):fmt("prettierd")
  --
  --     require("guard").setup({
  --       -- the only options for the setup function
  --       fmt_on_save = true,
  --       -- Use lsp if no formatter was defined for this filetype
  --       lsp_as_default_formatter = false,
  --  })
  --   end,
  -- },
  {
    "simrat39/rust-tools.nvim",
    -- ft = "rust",
    lazy = false,
  },

  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      cut_key = "<leader>x",
    },
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
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        -- theme = "wave", -- Load "wave" theme when 'background' option is not set
        -- background = {  -- map the value of 'background' option to a theme
        --   dark = "dragon", -- try "dragon" !
        --   light = "lotus",
        -- },
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
    end,
  },
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
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
