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
		keys = {
			{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find Todo" },
		},
		event = { "VeryLazy" },
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- 快速跳转
	{
		"ggandor/leap.nvim",
		event = { "VeryLazy" },
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	-- markdown 预览
	-- FIX: 远程连接有 bug
	-- https://github.com/iamcco/markdown-preview.nvim/issues/559
	{
		"iamcco/markdown-preview.nvim",
		ft = { "markdown" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_open_to_the_world = 1
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = "8855"
		end,
	},
}
