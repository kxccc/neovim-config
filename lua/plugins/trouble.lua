return {
	"folke/trouble.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>" },
	},
	config = function()
		require("trouble").setup()
	end,
}
