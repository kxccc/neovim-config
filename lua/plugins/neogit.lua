return {
	"TimUntersberger/neogit",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>g", "<cmd>Neogit<cr>" },
	},
	config = function()
		require("neogit").setup()
	end,
}
