return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
		require("which-key").setup({})
		local wk = require("which-key")
		wk.register({
			["<leader>t"] = {
				name = "Neotest",
				a = "attach",
				M = "clear_marked",
				T = "clear_target",
				d = "debug",
				D = "debug_marked",
				e = "expand_all",
				i = "jumpto",
				m = "mark",
				J = "next_failed",
				o = "output",
				K = "prev_failed",
				r = "run",
				R = "run_marked",
				O = "short",
				u = "stop",
				t = "target",
			},
			["<leader>x"] = {
				name = "Touble",
			},
			["<leader>c"] = {
				name = "LSP",
			},
			["<leader>f"] = {
				name = "Telescope",
			},
			["<leader>g"] = {
				name = "Git",
			},
			["<leader>a"] = {
				name = "Table Mode",
			},
			["<leader>o"] = {
				name = "Org Mode",
			},
		})
	end,
}
