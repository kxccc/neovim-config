return {
	"TimUntersberger/neogit",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>g", "<cmd>Neogit<cr>", desc = "Neogit" },
	},
	config = function()
		require("neogit").setup({
			-- FIX: 与 noice.nvim 不兼容
			-- https://github.com/folke/noice.nvim/issues/232
			disable_commit_confirmation = true,
		})
	end,
}
