return {
	"kyazdani42/nvim-tree.lua",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { silent = true, noremap = true })
	end,
}
