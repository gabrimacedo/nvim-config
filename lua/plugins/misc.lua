return {
	{ "echasnovski/mini.icons", version = false, opts = {} },
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{
		"echasnovski/mini.statusline",
		version = false,
		config = function()
			local statusline = require("mini.statusline")

			-- Override the active content function
			statusline.setup({
				content = {
					active = function()
						local mode, mode_hl = statusline.section_mode({ trunc_width = 120 })
						local git = statusline.section_git({ trunc_width = 40 })
						local diff = statusline.section_diff({ trunc_width = 75 })
						local diagnostics = statusline.section_diagnostics({ trunc_width = 75 })
						local lsp = statusline.section_lsp({ trunc_width = 75 })
						local filename = statusline.section_filename({ trunc_width = 140 })
						local fileinfo = statusline.section_fileinfo({ trunc_width = 120 })
						local location = statusline.section_location({ trunc_width = 75 })
						local search = statusline.section_searchcount({ trunc_width = 75 })

						-- Add your custom section
						local show_session = function(args)
							return require("auto-session.lib").current_session_name(true)
						end

						local session_info = show_session({ trunc_width = 200 })

						return statusline.combine_groups({
							{ hl = mode_hl, strings = { mode } },
							{ hl = "MiniStatuslineDevinfo", strings = { git, diff, diagnostics, lsp } },
							"%<", -- Mark general truncate point
							{ hl = "MiniStatuslineFilename", strings = { filename } },
							"%=", -- End left alignment
							-- Add your custom section before fileinfo
							{ hl = "MiniStatuslineFilename", strings = { session_info } },
							{ hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
							{ hl = mode_hl, strings = { search, location } },
						})
					end,
					-- You can also customize the inactive content if needed
				},
				-- Other configuration options...
			})
		end,
	},
}
