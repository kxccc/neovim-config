return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.1",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
	},
	config = function()
		require("telescope").setup()
	end,
}
