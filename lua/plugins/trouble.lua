return {
	"folke/trouble.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	-- TODO: 扩充
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble" },
		{ "<leader>xg", "<cmd>Gitsigns setqflist<cr>", desc = "Git" },
	},
	config = function()
		require("trouble").setup()
	end,
}
