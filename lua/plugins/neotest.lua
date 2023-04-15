return {
	"nvim-neotest/neotest",
	keys = {
		{ "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Neotest summary" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"antoinemadec/FixCursorHold.nvim",
		-- adapters
		"nvim-neotest/neotest-python",
	},
	-- FIX: 段错误
	-- https://github.com/nvim-neotest/neotest/issues/158
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python")({}),
			},
		})
	end,
}
