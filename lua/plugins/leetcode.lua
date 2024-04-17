return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html",
	lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- required by telescope
		"MunifTanjim/nui.nvim",

		-- optional
		"nvim-treesitter/nvim-treesitter",
		"rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		-- configuration goes here
		lang = "rust",
	},
}
