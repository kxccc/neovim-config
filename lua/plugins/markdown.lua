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
			vim.g.mkdp_auto_start = 1
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = "8855"
			vim.cmd([[
				function! Open_url(url)
					" 使用 system() 函数调用外部应用程序
					let command = 'silent-chrome-launcher ' . shellescape(a:url)
					let output = system(command)

					" 将输出结果插入到当前缓冲区
					" call append(line('$'), output)
				endfunction
			]])
			vim.g.mkdp_browserfunc = "Open_url"
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
			{ "<leader>ap", "<cmd>ObsidianPasteImg " .. vim.fn.strftime("%s") .. "<cr>", desc = "paste img" },
		},
		opts = {
			dir = "~/dev/docs/obsidian", -- no need to call 'vim.fn.expand' here
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
			require("obsidian").setup(opts)
		end,
	},

	{
		"mzlogin/vim-markdown-toc",
		ft = "markdown",
		keys = {
			{ "<leader>ao", "<cmd>GenTocMarked<cr>", desc = "gen toc" },
		},
	},
}
