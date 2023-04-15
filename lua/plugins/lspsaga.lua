return {
	"glepnir/lspsaga.nvim",
	branch = "main",
	keys = {
		-- Lsp finder find the symbol definition implement reference
		-- when you use action in finder like open vsplit then you can
		-- use <C-t> to jump back
		{ "gh", "<cmd>Lspsaga lsp_finder<CR>", desc = "LSP finder" },

		-- Code action
		{ "<leader>ca", "<cmd>Lspsaga code_action<CR>", mode = { "n", "v" }, desc = "code action" },

		-- Rename all occurrences of the hovered word for the entire file
		{ "gr", "<cmd>Lspsaga rename<CR>", desc = "Rename" },

		-- Peek Definition
		-- you can edit the definition file in this flaotwindow
		-- also support open/vsplit/etc operation check definition_action_keys
		-- support tagstack C-t jump back
		{ "gd", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },

		-- Show line diagnostics
		-- You can pass argument ++unfocus to
		-- unfocus the show_line_diagnostics floating window
		-- { "<leader>ls", "<cmd>Lspsaga show_line_diagnostics<CR>" },

		-- Show cursor diagnostics
		-- Like show_line_diagnostics, it supports passing the ++unfocus argument
		{ "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", desc = "cursor diagnostics" },

		-- Show buffer diagnostics
		-- { "<leader>bs", "<cmd>Lspsaga show_buf_diagnostics<CR>" },

		-- Diagnsotic jump can use `<c-o>` to jump back
		{ "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous warn or error" },
		{ "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next warn or error" },

		-- Diagnostic jump with filters such as only jumping to an error
		{
			"[E",
			function()
				require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
			end,
			desc = "Previous error",
		},
		{
			"]E",
			function()
				require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
			end,
			desc = "Next error",
		},

		-- Toggle outline
		{ "<leader>o", "<cmd>Lspsaga outline<CR>", desc = "Outline" },

		-- Hover Doc
		{ "K", "<cmd>Lspsaga hover_doc ++keep<CR>", desc = "LSP doc" },

		-- Call hierarchy
		{ "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", desc = "incoming calls" },
		{ "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", desc = "outgoing calls" },

		-- Floating terminal
		{ "<C-d>", "<cmd>Lspsaga term_toggle<CR>", mode = { "n", "t" }, desc = "terminal" },
	},
	config = function()
		require("lspsaga").setup()
	end,
}
