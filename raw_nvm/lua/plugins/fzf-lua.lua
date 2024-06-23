return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  requires = { "nvim-tree/nvim-web-devicons" },
  cmd = "FzfLua",
  lazy = false,
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

    local set = vim.keymap.set
    set('n', '<leader>ff', ":lua require('fzf-lua').files({cmd='rg --files --hidden --follow  -g !{**/.git/*}'})<cr>")
    set('n', '<leader>fw', ":lua require('fzf-lua').live_grep({ continue_last_search = true })<cr>")
    set('n', 'gd', ":FzfLua lsp_definitions <cr>")
    set('n', 'gr', ":FzfLua lsp_references <cr>")
    set('n', '<leader>ls', ":FzfLua lsp_document_symbols <cr>")
    set('n', '<leader>la', ":FzfLua lsp_code_actions <cr>")
  end,
}
