return {
	{
		"phaazon/hop.nvim",
		version = "v2",
		event = { "VeryLazy" },
		keys = {
			{ "<leader>h", "<cmd>HopLine<CR>", desc = "Hop Line" },
		},
		config = function()
			-- place this in one of your configuration file(s)
			-- FIX: 不支持 operator
			-- https://github.com/phaazon/hop.nvim/issues/58
			local hop = require("hop")
			local directions = require("hop.hint").HintDirection
			vim.keymap.set({ "n", "v" }, "f", function()
				hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "F", function()
				hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "t", function()
				hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "T", function()
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
			vim.keymap.set({ "n", "v" }, "<leader>S", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.BEFORE_CURSOR })
			end, { remap = true, desc = "Hop Before" })

			vim.keymap.set("o", "<leader>s", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
			end, { remap = true })
			vim.keymap.set("o", "<leader>S", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
			end, { remap = true })

			require("hop-zh-by-flypy").setup({
				set_default_mappings = false,
			})
		end,
	},
}
