-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require("astronvim.utils")

return {
  -- first key is the mode
  n = {
    -- Neotree
    ["<leader>e"] = {
      ":Neotree filesystem toggle left<cr>",
      desc = "Open file tree",
    },
    ["<leader>o"] = {
      ":Neotree filesystem reveal left<cr>",
      desc = "Open file tree",
    },
    -- FZF
    ["<leader>F"] = {
      ":lua require('fzf-lua').files({cmd='rg --files --hidden --follow  -g !{**/.git/*}'})<cr>",
      desc = "Search all files",
    },
    ["<leader>ff"] = {
      ":lua require('fzf-lua').git_files({cmd='rg --files --hidden --follow -g !{**/.git/**}'})<cr>",
      desc = "Search Git files",
    },
    ["<leader>fw"] = {
      ":lua require('fzf-lua').live_grep({ continue_last_search = true })<cr>",
      desc = "Search pattern in project",
    },
    ["<leader>fo"] = { "<cmd>:FzfLua oldfiles<cr>", desc = "Show last open files" },
    ["<leader>fk"] = { "<cmd>:FzfLua keymaps<cr>", desc = "Search for keymap" },
    ["<leader>gc"] = { "<cmd>:FzfLua git_commits<cr>", desc = "List commits" },
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>bd"] = { ":lua vim.lsp.buf.format()<cr>", desc = "Format buffer" },
    -- Smart-splits
    ["<C-Left>"] = {
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move to left split",
    },
    ["<C-Right>"] = {
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move to right split",
    },
    ["<C-Up>"] = {
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move to above split",
    },
    ["<C-Down>"] = {
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move to below split",
    },
    ["<S-Up>"] = {
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize split up",
    },
    ["<S-Down>"] = {
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize split down",
    },
    ["<S-Left>"] = {
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize split left",
    },
    ["<S-Right>"] = {
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize split right",
    },
    -- leap.nvim
    ["`"] = { "<Plug>(leap-forward-to)", desc = "Leap forward" },
    ["~"] = { "<Plug>(leap-backward-to)", desc = "Leap backward" },
    -- mini.move
    ["<C-h>"] = {
      function()
        require("mini.move").move_line("left")
      end,
      desc = "Move line left",
    },
    ["<C-j>"] = {
      function()
        require("mini.move").move_line("bottom")
      end,
      desc = "Move line down",
    },
    ["<C-k>"] = {
      function()
        require("mini.move").move_line("up")
      end,
      desc = "Move line up",
    },
    ["<C-l>"] = {
      function()
        require("mini.move").move_line("right")
      end,
      desc = "Move line right",
    },
    --- heirline
    ["<S-h>"] = {
      function()
        require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
      end,
      desc = "Previous buffer",
    },
    ["<S-l>"] = {
      function()
        require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "Next buffer",
    },
  },
  v = {
    ["<C-h>"] = {
      function()
        require("mini.move").move_selection("left")
      end,
      desc = "Move selection left",
    },
    ["<C-j>"] = {
      function()
        require("mini.move").move_selection("down")
      end,
      desc = "Move selection down",
    },
    ["<C-k>"] = {
      function()
        require("mini.move").move_selection("up")
      end,
      desc = "Move selection up",
    },
    ["<C-l>"] = {
      function()
        require("mini.move").move_selection("right")
      end,
      desc = "Move selection right",
    },
  },
  t = {},
}
