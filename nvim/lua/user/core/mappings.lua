-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --[[ nrmap('v', '<Left>', '<gv') ]]
    --[[ nrmap('v', '<Right>', '>gv') ]]
    --[[ nrmap('v', '<Up>', '[egv') ]]
    --[[ nrmap('v', '<Down>', ']egv') ]]
    --[[ ["<C-h>"] = false, ]]
    --[[ ["<C-l>"] = false, ]]
    --[[ ["<c-j>"] = false, ]]
    --[[ ["<c-k>"] = false, ]]
    ["<C-h>"] = { "<<", desc = "Move line to the left" },
    ["<C-l>"] = { ">>", desc = "Move line to the right" },
    ["<C-k>"] = { ":normal [e<cr>", desc = "Move line to the up" },
    ["<C-j>"] = { ":normal ]e<cr>", desc = "Move line to the down" },
  },
  v = {},
  t = {
    ["<C-h>"] = { "<gv", desc = "Move code block to the left" },
    --[[ ["<C-k>"] = { ":visual [egv<cr>", desc = "Move code block to the up" }, ]]
    --[[ ["<C-j>"] = { "]egv", desc = "Move code block to the down" }, ]]
    ["<C-l>"] = { ">gv", desc = "Move code block to the right" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
