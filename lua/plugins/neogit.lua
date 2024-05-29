return {
	"TimUntersberger/neogit",
	-- TODO: 升级0.10后放开限制
	tag = "v0.0.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	keys = {
		{ "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
	},
	config = function()
		require("neogit").setup({
			-- FIX: 与 noice.nvim 不兼容
			-- https://github.com/folke/noice.nvim/issues/232
			disable_commit_confirmation = true,
		})
	end,
}
