return {
	"folke/trouble.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
		require("trouble").setup()
	end,
}
