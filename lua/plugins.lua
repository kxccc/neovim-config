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

	-- 快速跳转
	{
		"ggandor/leap.nvim",
		event = { "VeryLazy" },
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	-- 缩进检测
	{
		"nmac427/guess-indent.nvim",
		event = { "VeryLazy" },
		opts = {},
	},
}
