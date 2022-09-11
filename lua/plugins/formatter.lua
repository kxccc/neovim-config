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
			require("formatter.filetypes.yaml").pyaml,
		},

		javascript = {
			require("formatter.filetypes.javascript").clangformat,
		},

		typescript = {
			require("formatter.filetypes.typescript").clangformat,
		},

		css = {
			require("formatter.filetypes.css").stylefmt,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
