return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			label = {
				uppercase = false,
			},
			modes = {
				search = {
					enabled = true,
				},
			},
		},
		keys = {
			{
				"<leader>sd",
				mode = { "n" },
				function()
					require("flash").jump({
						action = function(match, state)
							vim.api.nvim_win_call(match.win, function()
								vim.api.nvim_win_set_cursor(match.win, match.pos)
								vim.cmd("Lspsaga peek_definition")
							end)
							state:restore()
						end,
					})
				end,
				desc = "Show Definition",
			},
			{
				"<leader>ss",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump({
						search = { mode = "search", max_length = 0 },
						label = { after = { 0, 0 } },
						pattern = "^",
					})
				end,
				desc = "Jump to a Line",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	{
		"rainzm/flash-zh.nvim",
		event = "VeryLazy",
		dependencies = "folke/flash.nvim",
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash-zh").jump({
						chines_only = false,
					})
				end,
				desc = "Flash Between Chinese",
			},
		},
	},
}
