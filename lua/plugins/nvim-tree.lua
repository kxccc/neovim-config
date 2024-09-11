return {
	"kyazdani42/nvim-tree.lua",
	lazy = false,
	dependencies = "kyazdani42/nvim-web-devicons",
	keys = {
		{ "<leader>et", "<cmd>NvimTreeToggle<cr>", desc = "toggle" },
		{ "<leader>ef", "<cmd>NvimTreeFindFile<cr>", desc = "find file" },
		{ "<leader>e<", "<cmd>NvimTreeResize -10<cr>", desc = "decrease width" },
		{ "<leader>e>", "<cmd>NvimTreeResize +10<cr>", desc = "increase width" },
	},
	config = function()
		require("nvim-tree").setup()
	end,
}
