return {
	"kyazdani42/nvim-tree.lua",
	dependencies = "kyazdani42/nvim-web-devicons",
	keys = {
		{ "<leader>et", "<cmd>NvimTreeToggle<cr>", desc = "toggle" },
		{ "<leader>ef", "<cmd>NvimTreeFindFileToggle<cr>", desc = "find file" },
	},
	config = function()
		require("nvim-tree").setup()
	end,
}
