-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- FZF mappings
    ["<leader>ff"] = {
      ":lua require('fzf-lua').files({cmd='rg --files --hidden --follow'})<cr>",
      desc = "Search files",
    },
    ["<leader>fw"] = {
      ":lua require('fzf-lua').live_grep({ continue_last_search = true })<cr>",
      desc = "Search pattern in project",
    },
    ["<leader>ls"] = { "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Search document symbols" },
    ["<leader>lR"] = {
      ":lua require('fzf-lua').lsp_definitions({ sync = true, jump_to_single_result = true, jump_to_single_result_action = require('fzf-lua.actions').file_vsplit, })<cr>",
      desc = "Search references",
    },
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>bd"] = { ":lua vim.lsp.buf.format()<cr>", desc = "Format buffer" },
    -- smart-splits
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
