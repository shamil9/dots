return {
	{
		"echasnovski/mini.statusline",
		config = function()
			require('mini.statusline').setup({
				content = {
					-- Content for active window
					active = function()
						local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
						local git           = MiniStatusline.section_git({ trunc_width = 40 })
						local diff          = MiniStatusline.section_diff({ trunc_width = 75 })
						local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
						local lsp           = MiniStatusline.section_lsp({ trunc_width = 75 })
						local filename      = MiniStatusline.section_filename({ trunc_width = 140 })
						local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 120 })
						local location      = MiniStatusline.section_location({ trunc_width = 75 })
						local search        = MiniStatusline.section_searchcount({ trunc_width = 75 })

						return MiniStatusline.combine_groups({
							{ hl = mode_hl,                  strings = { string.upper(mode) } },
							'%<', -- Mark general truncate point
							{ hl = 'MiniStatuslineFilename', strings = { filename } },
							'%=', -- End left alignment
							{ hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics, lsp } },
							-- { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
							-- { hl = mode_hl,                  strings = { search, location } },
						})
					end,
					-- Content for inactive window(s)
					inactive = nil,
				},
			})
		end
	}
}
