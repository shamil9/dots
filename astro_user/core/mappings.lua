-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
	-- first key is the mode
	n = {
		-- window management
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
		-- second key is the lefthand side of the map
		-- mappings seen under group name "Buffer"
		["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
		["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
		["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
		["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
		-- quick save
		-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
		["<C-h>"] = { "<<", desc = "Move line to the left" },
		["<C-l>"] = { ">>", desc = "Move line to the right" },
		["<C-k>"] = { ":normal [e<cr>", desc = "Move line to the up" },
		["<C-j>"] = { ":normal ]e<cr>", desc = "Move line to the down" },
	},
	v = {
		["<C-h>"] = { "<gv", desc = "Move code block to the left" },
		["<C-l>"] = { ">gv", desc = "Move code block to the right" },
	},
	t = {
		-- ["<C-h>"] = { "<gv", desc = "Move code block to the left" },
		--[[ ["<C-k>"] = { ":visual [egv<cr>", desc = "Move code block to the up" }, ]]
		--[[ ["<C-j>"] = { "]egv", desc = "Move code block to the down" }, ]]
		-- ["<C-l>"] = { ">gv", desc = "Move code block to the right" },
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}
