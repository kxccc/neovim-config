return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
		require("which-key").setup({})
		local wk = require("which-key")
		wk.register({
			["<leader>m"] = {
				name = "Neotest",
				s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Neotest summary" },
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
		})
	end,
}
