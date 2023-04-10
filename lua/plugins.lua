return {
	-- 括号补全
	{
		"windwp/nvim-autopairs",
		event = { "VeryLazy" },
		opts = {},
	},

	-- Git 工具
	{
		"lewis6991/gitsigns.nvim",
		version = "release",
		opts = {},
	},

	-- 注释
	{
		"numToStr/Comment.nvim",
		event = { "VeryLazy" },
		opts = {},
	},

	-- 缩进检测
	{
		"nmac427/guess-indent.nvim",
		event = { "VeryLazy" },
		opts = {},
	},

	-- todo 注释
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		event = { "VeryLazy" },
		config = function()
			require("todo-comments").setup()
		end,
	},
}
