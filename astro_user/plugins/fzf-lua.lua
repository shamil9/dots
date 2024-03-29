return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  requires = { "nvim-tree/nvim-web-devicons" },
  cmd = "FzfLua",
  config = function()
    require("fzf-lua").setup({
      -- "fzf-native",
      file_ignore_patterns = { "/node_modules/" },
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
          config = nil,               -- nil uses $BAT_CONFIG_PATH
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
