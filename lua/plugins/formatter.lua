return {
	"mhartington/formatter.nvim",
	keys = {
		{ "<leader>l", ":Format<cr>", mode = { "n", "v" }, desc = "Format" },
	},
	config = function()
		local util = require("formatter.util")

		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },

				yaml = { require("formatter.filetypes.yaml").prettier },

				javascript = { require("formatter.filetypes.javascript").prettier },

				typescript = { require("formatter.filetypes.typescript").prettier },

				css = { require("formatter.filetypes.css").prettier },

				json = { require("formatter.filetypes.json").prettier },

				html = { require("formatter.filetypes.html").prettier },

				markdown = {
					function()
						-- return require("formatter.filetypes.markdown").prettier()
						vim.fn.jobstart({ "open", "-g", "hammerspoon://markdown_format" })
					end,
				},

				java = {
					function()
						vim.lsp.buf.format()
					end,
				},

				swift = {
					function()
						return {
							exe = "swift-format",
							stdin = "true",
						}
					end,
				},

				cpp = { require("formatter.filetypes.cpp").clangformat },

				c = { require("formatter.filetypes.c").clangformat },

				objc = { require("formatter.filetypes.c").clangformat },

				objcpp = { require("formatter.filetypes.cpp").clangformat },

				python = { require("formatter.filetypes.python").yapf },

				nix = { require("formatter.filetypes.nix").nixpkgs_fmt },

				sh = { require("formatter.filetypes.sh").shfmt },

				["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
			},
		})
	end,
}
