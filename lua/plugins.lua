return {
	-- 括号补全
	{
		"windwp/nvim-autopairs",
		event = { "VeryLazy" },
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

	-- 保存状态
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		keys = {
			{ "<leader>qd", [[<cmd>lua require("persistence").load()<cr>]], desc = "directory session" },
			{ "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], desc = "last session" },
		},
		opts = {},
	},

	-- 平滑滚动
	{
		"karb94/neoscroll.nvim",
		event = { "VeryLazy" },
		opts = {},
	},
}
