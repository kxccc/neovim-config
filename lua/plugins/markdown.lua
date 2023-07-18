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
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = "8855"
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
}
