return {
	{
		"phaazon/hop.nvim",
		version = "v2",
		event = { "VeryLazy" },
		config = function()
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
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "<leader>S", function()
				hop_zh_by_flypy.hint_char2({ direction = directions.BEFORE_CURSOR })
			end, { remap = true })

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
