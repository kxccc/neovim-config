return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("folke/tokyonight.nvim")

	use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })

	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })

	use("mfussenegger/nvim-dap")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use("windwp/nvim-autopairs")

	use({ "lewis6991/gitsigns.nvim", tag = "release" })

	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = "nvim-lua/plenary.nvim" })

	use("lukas-reineke/indent-blankline.nvim")

	use("williamboman/mason.nvim")
	use("neovim/nvim-lspconfig")
	use("williamboman/mason-lspconfig.nvim")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("mhartington/formatter.nvim")

	use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })

	use({ "glepnir/lspsaga.nvim", branch = "main" })

	use({ "rcarriga/nvim-dap-ui", requires = "mfussenegger/nvim-dap" })

	use("theHamsta/nvim-dap-virtual-text")

	use({ "mxsdev/nvim-dap-vscode-js", requires = "mfussenegger/nvim-dap" })
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npm run compile",
	})

	use("mfussenegger/nvim-jdtls")

	use("numToStr/Comment.nvim")

	use("justinmk/vim-sneak")
end)
