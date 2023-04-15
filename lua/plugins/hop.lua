return {
	{
		"phaazon/hop.nvim",
		version = "v2",
		event = { "VeryLazy" },
		keys = {
			{ "<leader>l", "<cmd>HopLine<CR>", desc = "Hop Line" },
		},
		config = function()
			-- place this in one of your configuration file(s)
			local hop = require("hop")
			local directions = require("hop.hint").HintDirection
			vim.keymap.set("", "f", function()
				hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set("", "F", function()
				hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set("", "t", function()
				hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
			end, { remap = true })
			vim.keymap.set("", "T", function()
				hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
			end, { remap = true })

			require("hop").setup({
				extensions = {
					"hop-zh-by-flypy",
				},
			})
		end,
	},
	{
		"zzhirong/hop-zh-by-flypy",
		event = { "VeryLazy" },
		dependencies = {
			"phaazon/hop.nvim",
		},
		config = function()
			local hop_zh_by_flypy = require("hop-zh-by-flypy")
			local directions = require("hop.hint").HintDirection

			vim.keymap.set({ "n", "v" }, "<leader>s", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.AFTER_CURSOR })
			end, { remap = true, desc = "Hop After" })
			vim.keymap.set({ "n", "v" }, "<leader>a", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.BEFORE_CURSOR })
			end, { remap = true, desc = "Hop Before" })

			vim.keymap.set("o", "<leader>s", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
			end, { remap = true })
			vim.keymap.set("o", "<leader>a", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
			end, { remap = true })

			require("hop-zh-by-flypy").setup({
				set_default_mappings = false,
			})
		end,
	},
}
