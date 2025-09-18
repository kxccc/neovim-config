return {
	"TimUntersberger/neogit",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	lazy = false,
	keys = {
		{ "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
	},
	config = function()
		require("neogit").setup({})
	end,
}
