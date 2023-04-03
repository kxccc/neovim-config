return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.0",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true, noremap = true })
		require("telescope").setup()
	end,
}
