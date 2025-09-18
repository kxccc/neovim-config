return {
	"stevearc/conform.nvim",
	keys = {
		{ "<leader>l", ":Format<cr>", mode = { "n", "v" }, desc = "Format" },
	},
	config = function()
		vim.api.nvim_create_user_command("Format", function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end

			-- markdown 特殊处理
			if vim.bo.filetype == "markdown" then
				if range then
					require("conform").format({
						async = true,
						formatters = { "injected" },
						lsp_format = "fallback",
					})
				else
					require("conform").format({
						async = true,
						formatters = { "my_markdown" },
						lsp_format = "fallback",
					})
				end
				return
			end

			require("conform").format({ async = true, lsp_format = "fallback", range = range })
		end, { range = true })

		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				objc = { "clang-format" },
				objcpp = { "clang-format" },
				json = { "prettierd" },
				rust = { "rustfmt" },
				python = { "autopep8" },
				swift = { "swiftformat" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },

				-- Use the "_" filetype to run formatters on filetypes that don't
				-- have other formatters configured.
				["_"] = { "trim_whitespace" },
			},
			formatters = {
				my_markdown = {
					inherit = false,
					command = "open",
					args = { "-g", "hammerspoon://markdown_format" },
				},
			},
		})
	end,
}
