return {
	-- markdown 预览
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		keys = {
			{ "<leader>av", "<cmd>MarkdownPreview<cr>", desc = "preview" },
		},
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = "8855"
			vim.g.mkdp_preview_options = {
				uml = { imageFormat = "svg" },
			}
			vim.g.mkdp_images_path = vim.fn.getcwd()
		end,
	},

	-- 表格模式
	{
		"dhruvasagar/vim-table-mode",
		ft = "markdown",
		init = function()
			vim.g.table_mode_map_prefix = "<leader>a"
			vim.g.table_mode_motion_up_map = ""
			vim.g.table_mode_motion_down_map = ""
		end,
	},

	-- Obsidian
	{
		"epwalsh/obsidian.nvim",
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
		event = { "BufReadPre " .. vim.fn.expand("~") .. "/dev/docs/obsidian/**.md" },
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
			"nvim-telescope/telescope.nvim",
		},
		keys = {
			{ "<leader>ap", "<cmd>lua vim.cmd('ObsidianPasteImg' .. os.time())<cr>", desc = "paste img" },
			{ "<leader>ao", "<cmd>ObsidianOpen<cr>", desc = "obsidian open" },
		},
		opts = {
			dir = "~/dev/docs/obsidian", -- no need to call 'vim.fn.expand' here
			open_app_foreground = true,
			follow_url_func = function(url)
				-- Open the URL in the default web browser.
				vim.fn.jobstart({ "open", url }) -- Mac OS
				-- vim.fn.jobstart({"xdg-open", url})  -- linux
			end,
			use_advanced_uri = true,
			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "dailies",
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				template = "daily.md",
			},
			-- Optional, for templates (see below).
			templates = {
				subdir = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M",
				-- A map for custom variables, the key should be the variable and the value a function
				substitutions = {},
			},
		},
		config = function(_, opts)
			vim.opt.conceallevel = 1
			require("obsidian").setup(opts)
		end,
	},

	-- 生成目录
	{
		"mzlogin/vim-markdown-toc",
		ft = "markdown",
		keys = {
			{ "<leader>ag", "<cmd>GenTocMarked<cr>", desc = "gen toc" },
		},
	},

	-- 标题序号
	{
		"whitestarrain/md-section-number.nvim",
		ft = "markdown",
		config = function()
			require("md_section_number").setup({
				min_level = 2,
			})
		end,
	},
}
