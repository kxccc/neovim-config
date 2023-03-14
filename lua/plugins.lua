return require("packer").startup(function(use)
	-- 插件管理器
	use("wbthomason/packer.nvim")

	-- 主题
	use({
		"folke/tokyonight.nvim",
		config = function()
			require("plugins.tokyonight")
		end,
	})

	-- 文件树
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.nvim-tree")
		end,
	})

	-- buffer 栏
	use({
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.bufferline")
		end,
	})

	-- 状态栏
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
		config = function()
			require("plugins.lualine")
		end,
	})

	-- 调试
	use({
		"mfussenegger/nvim-dap",
		config = function()
			require("plugins.nvim-dap")
		end,
	})

	-- 高亮、折叠、选择、缩进
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("plugins.nvim-treesitter")
		end,
	})

	-- 括号补全
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- Git 工具
	use({
		"lewis6991/gitsigns.nvim",
		tag = "release",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- Git 管理
	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("plugins.neogit")
		end,
	})

	-- 文件搜索
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("plugins.telescope")
		end,
	})

	-- 缩进线
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugins.indent-blankline")
		end,
	})

	-- mason
	use("williamboman/mason.nvim")
	use("neovim/nvim-lspconfig")
	use({
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("plugins.mason-lspconfig")
		end,
	})

	-- 自动补全
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.nvim-cmp")
		end,
	})
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- 格式化
	use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter")
		end,
	})

	-- 问题栏
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.trouble")
		end,
	})

	-- lsp ui
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("plugins.lspsaga")
		end,
	})

	-- dap ui
	use({
		"rcarriga/nvim-dap-ui",
		requires = "mfussenegger/nvim-dap",
		config = function()
			require("plugins.nvim-dap-ui")
		end,
	})

	-- dap text
	use({
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			require("nvim-dap-virtual-text").setup()
		end,
	})

	-- js ts 调试
	use({
		"mxsdev/nvim-dap-vscode-js",
		requires = "mfussenegger/nvim-dap",
		config = function()
			require("plugins.nvim-dap-vscode-js")
		end,
	})
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})

	-- java 工具
	use("mfussenegger/nvim-jdtls")

	-- 注释
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- 快速跳转
	use("justinmk/vim-sneak")

	-- 缩进检测
	use({
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup()
		end,
	})

	-- ssh tmux 复制
	use({
		"ojroques/nvim-osc52",
		config = function()
			require("plugins.nvim-osc52")
		end,
	})

	-- python 调试
	use({
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup()
		end,
	})
end)
