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
			["<leader>e"] = {
				name = "File Tree",
			},
			["<leader>b"] = {
				name = "Leetcode",
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
			["<leader>p"] = {
				name = "ChatGPT",
				c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
				e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
				g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
				t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
				k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
				d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
				a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
				o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
				s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
				f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
				x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
				r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
				l = {
					"<cmd>ChatGPTRun code_readability_analysis<CR>",
					"Code Readability Analysis",
					mode = { "n", "v" },
				},
			},
		})
	end,
}
