return {
	-- 括号补全
	{
		"windwp/nvim-autopairs",
		event = { "InsertEnter" },
		opts = {
			fast_wrap = {
				map = "<C-e>",
			},
		},
	},

	-- 注释
	{
		"numToStr/Comment.nvim",
		event = { "VeryLazy" },
		config = function()
			local ft = require("Comment.ft")
			ft({ "objc", "objcpp" }, ft.get("c"))
			require("Comment").setup()
		end,
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

	-- outline
	{
		"simrat39/symbols-outline.nvim",
		keys = {
			{ "<leader>i", "<cmd>SymbolsOutline<CR>", desc = "Outline" },
		},
		opts = {},
	},

	-- 单词高亮
	{
		"RRethy/vim-illuminate",
		event = "VeryLazy",
		config = function()
			require("illuminate").configure()
		end,
	},

	-- copilot
	{
		"zbirenbaum/copilot.lua",
		event = "VeryLazy",
		config = function()
			vim.g.copilot_proxy = "agent.baidu.com:8891"
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},

	-- copilot cmp
	{
		"zbirenbaum/copilot-cmp",
		event = { "InsertEnter", "LspAttach" },
		opts = {},
	},

	-- 运行代码片段
	{
		"michaelb/sniprun",
		event = "VeryLazy",
		branch = "master",
		build = "sh install.sh",
		opts = {},
	},
}
