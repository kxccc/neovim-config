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
	{
		"iamcco/markdown-preview.nvim",
		ft = { "markdown" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = "8855"
		end,
	},

	-- outline
	{
		"simrat39/symbols-outline.nvim",
		keys = {
			{ "<leader>i", "<cmd>SymbolsOutline<CR>", desc = "Outline" },
		},
		opts = {},
	},

	-- 表格模式
	{
		"dhruvasagar/vim-table-mode",
		ft = { "markdown", "org" },
		config = function()
			vim.g.table_mode_motion_up_map = ""
			vim.g.table_mode_motion_down_map = ""
		end,
	},

	-- headlines 颜色
	{
		"lukas-reineke/headlines.nvim",
		ft = { "markdown", "org" },
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {},
	},
}
