vim.cmd([[
nnoremap <leader>t :Format<CR>
vnoremap <leader>t :Format<CR>
]])

local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		yaml = {
			require("formatter.filetypes.yaml").prettier,
		},

		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},

		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},

		css = {
			require("formatter.filetypes.css").prettier,
		},

		json = {
			require("formatter.filetypes.json").prettier,
		},

		html = {
			require("formatter.filetypes.html").prettier,
		},

		java = {
			function()
				vim.lsp.buf.format()
			end,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
