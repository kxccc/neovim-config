return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
		require("which-key").setup({})
		local wk = require("which-key")
		wk.register({
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
				name = "Markdown",
			},
			["<leader>o"] = {
				name = "Org Mode",
			},
			["<leader>q"] = {
				name = "Session",
			},
			["<leader>r"] = {
				name = "Help",
				p = {
					name = "ChatGPT",
					["<C-Enter>"] = { "a<C-Enter>", "submit", noremap = false },
					["<C-y>"] = { "<C-y>", "yank last answer", noremap = false },
					["<C-o>"] = { "<C-o>", "Toggle settings window", noremap = false },
					["<Tab>"] = { "<Tab>", "Cycle over windows", noremap = false },
					["<C-c>"] = { "<C-c>", "close chat window", noremap = false },
					["<C-k>"] = { "<C-k>", "yank code from last answer", noremap = false },
					["<C-n>"] = { "<C-n>", "Start new session", noremap = false },
					["<C-s>"] = { "<C-s>", "Toggle system message window", noremap = false },
				},
				t = {
					name = "Neotest Summary",
					a = { "a", "attach", noremap = false },
					M = { "M", "clear marked", noremap = false },
					T = { "T", "clear target", noremap = false },
					d = { "d", "debug", noremap = false },
					D = { "D", "debug marked", noremap = false },
					["<CR>"] = { "<CR>", "expand", noremap = false },
					e = { "e", "expand all", noremap = false },
					i = { "i", "jumpto", noremap = false },
					m = { "m", "mark", noremap = false },
					J = { "J", "next failed", noremap = false },
					o = { "o", "output", noremap = false },
					K = { "K", "prev failed", noremap = false },
					r = { "r", "run", noremap = false },
					R = { "R", "run marked", noremap = false },
					O = { "O", "short", noremap = false },
					u = { "u", "stop", noremap = false },
					t = { "t", "target", noremap = false },
				},
			},
		})
	end,
}
