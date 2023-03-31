return {
  "ibhagwan/fzf-lua",
  lazy = false,
  -- optional for icon support
  requires = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      -- "fzf-native",
      files = {
        multiprocess = true,
      },
      grep = {
        multiprocess = true,
      },
      live_grep = {
        multiprocess = true,
      },
      previewers = {
        bat = {
          cmd = "bat",
          args = "--style=numbers,changes --color always",
          theme = "Catppuccin-mocha", -- bat preview theme (bat --list-themes)
          config = nil, -- nil uses $BAT_CONFIG_PATH
        },
      },
      winopts = {
        border = true,
        preview = {
          -- border = "noborder",
          layout = "vertical",
          vertical = "down:70%",
        },
      },
    })
  end,
}
