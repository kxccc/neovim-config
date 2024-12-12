return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()

		-- Add additional capabilities supported by nvim-cmp
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
		local servers = { "ts_ls", "pylsp", "marksman", "rust_analyzer", "buf_ls" }
		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				-- on_attach = my_custom_on_attach,
				capabilities = capabilities,
			})
		end

		lspconfig["sourcekit"].setup({
			filetypes = { "swift" },
			capabilities = capabilities,
		})

		-- FIX: offsetEncoding 问题
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
		capabilities.offsetEncoding = { "utf-16" }
		lspconfig["clangd"].setup({
			filetypes = { "objc", "objcpp", "c" },
			capabilities = capabilities,
		})

		lspconfig["lua_ls"].setup({
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using
						-- (most likely LuaJIT in the case of Neovim)
						version = "LuaJIT",
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = {
							"vim",
						},
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = (function()
							local ret = {}
							table.insert(ret, "~/.hammerspoon/Spoons/EmmyLua.spoon/annotations")
							return ret
						end)(),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
			capabilities = capabilities,
		})
	end,
}
