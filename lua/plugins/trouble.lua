return {
	"folke/trouble.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	keys = {
		{ "<leader>xg", "<cmd>Gitsigns setqflist<cr>", desc = "Git" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "document diagnostics" },
		{ "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo" },
	},
	config = function()
		require("trouble").setup()
	end,
}
