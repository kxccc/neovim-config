return {
	"kyazdani42/nvim-tree.lua",
	dependencies = "kyazdani42/nvim-web-devicons",
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File Tree" },
	},
	config = function()
		require("nvim-tree").setup()
	end,
}
