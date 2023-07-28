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

	-- BUG: health 错误
	-- https://github.com/ekickx/clipboard-image.nvim/issues/50
	-- markdown 图片插入
	{
		"postfen/clipboard-image.nvim",
		ft = "markdown",
		keys = {
			{ "<leader>ap", "<cmd>PasteImg<cr>", desc = "paste img" },
		},
		opts = {
			markdown = {
				img_dir = function()
					return "media/" .. vim.fn.expand("%:r")
				end,
				img_dir_txt = function()
					return "media/" .. vim.fn.expand("%:r")
				end,
				img_name = function()
					return os.time()
				end,
				affix = "![](%s)",
			},
		},
	},

	{
		"epwalsh/obsidian.nvim",
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
		event = { "BufReadPre " .. vim.fn.expand("~") .. "/dev/obsidian/**.md" },
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			dir = "~/dev/obsidian", -- no need to call 'vim.fn.expand' here
			disable_frontmatter = true,
		},
		config = function(_, opts)
			require("obsidian").setup(opts)
		end,
	},
}
