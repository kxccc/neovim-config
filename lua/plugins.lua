return {
	-- 括号补全
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},

	-- Git 工具
	{
		"lewis6991/gitsigns.nvim",
		version = "release",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- 注释
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- 快速跳转
	"justinmk/vim-sneak",

	-- 缩进检测
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup()
		end,
	},

	-- python 调试
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup("~/.nix-profile/bin/python")
		end,
	},
}
