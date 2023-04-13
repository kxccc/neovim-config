return {
	"glepnir/lspsaga.nvim",
	branch = "main",
	keys = {
		-- Lsp finder find the symbol definition implement reference
		-- when you use action in finder like open vsplit then you can
		-- use <C-t> to jump back
		{ "gh", "<cmd>Lspsaga lsp_finder<CR>" },

		-- Code action
		{ "<leader>ca", "<cmd>Lspsaga code_action<CR>", mode = { "n", "v" } },

		-- Rename all occurrences of the hovered word for the selected files
		{ "gr", "<cmd>Lspsaga rename ++project<CR>" },

		-- Peek Definition
		-- you can edit the definition file in this flaotwindow
		-- also support open/vsplit/etc operation check definition_action_keys
		-- support tagstack C-t jump back
		{ "gd", "<cmd>Lspsaga peek_definition<CR>" },

		-- Show line diagnostics
		-- You can pass argument ++unfocus to
		-- unfocus the show_line_diagnostics floating window
		-- { "<leader>ls", "<cmd>Lspsaga show_line_diagnostics<CR>" },

		-- Show cursor diagnostics
		-- Like show_line_diagnostics, it supports passing the ++unfocus argument
		{ "<leader>cs", "<cmd>Lspsaga show_cursor_diagnostics<CR>" },

		-- Show buffer diagnostics
		-- { "<leader>bs", "<cmd>Lspsaga show_buf_diagnostics<CR>" },

		-- Diagnsotic jump can use `<c-o>` to jump back
		{ "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>" },
		{ "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>" },

		-- Diagnostic jump with filters such as only jumping to an error
		{
			"[E",
			function()
				require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
			end,
		},
		{
			"]E",
			function()
				require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
			end,
		},

		-- Toggle outline
		{ "<leader>o", "<cmd>Lspsaga outline<CR>" },

		-- Hover Doc
		{ "K", "<cmd>Lspsaga hover_doc ++keep<CR>" },

		-- Call hierarchy
		{ "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>" },
		{ "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>" },

		-- Floating terminal
		{ "<C-d>", "<cmd>Lspsaga term_toggle<CR>", mode = { "n", "t" } },
	},
	config = function()
		require("lspsaga").setup()
	end,
}
