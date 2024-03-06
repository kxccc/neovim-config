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
		local servers = { "tsserver", "pylsp", "marksman", "rust_analyzer" }
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
			capabilities = capabilities,
		})
	end,
}
