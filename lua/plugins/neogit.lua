return {
	"TimUntersberger/neogit",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	keys = {
		{ "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
	},
	config = function()
		require("neogit").setup({})
	end,
}
