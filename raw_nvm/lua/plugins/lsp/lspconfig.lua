return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local signs = { Error = " ×", Warn = " ⚠", Hint = "💡", Info = " ℹ" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end

		local lspconfig = require('lspconfig')
		local util = require 'lspconfig.util'

		local function get_typescript_server_path(root_dir)
			local node_modules = vim.fn.system('npm root -g', true)
			node_modules = string.gsub(node_modules, "\n", "")
			local global_ts = node_modules .. '/typescript/lib'

			local found_ts = ''
			local function check_dir(path)
				found_ts = util.path.join(path, 'node_modules', 'typescript', 'lib')
				if util.path.exists(found_ts) then
					return path
				end
			end
			if util.search_ancestors(root_dir, check_dir) then
				return found_ts
			else
				return global_ts
			end
		end

		lspconfig.tsserver.setup({})
		lspconfig.volar.setup({
			filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
			init_options = {
				vue = {
					hybridMode = false
				},
			},
			on_new_config = function(new_config, new_root_dir)
				new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
			end,
		})
		lspconfig.cssls.setup({})
	end
}
