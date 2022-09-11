return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("folke/tokyonight.nvim")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
	})

	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use("mfussenegger/nvim-dap")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({
		"windwp/nvim-autopairs",
	})

	use({
		"lewis6991/gitsigns.nvim",
		tag = "release", -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})

	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("lukas-reineke/indent-blankline.nvim")

	use({ "akinsho/toggleterm.nvim", tag = "*" })

	use({ "williamboman/mason.nvim" })
	use("neovim/nvim-lspconfig")
	use("williamboman/mason-lspconfig.nvim")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use({ "mhartington/formatter.nvim" })

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})

	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })

	use("theHamsta/nvim-dap-virtual-text")
end)
