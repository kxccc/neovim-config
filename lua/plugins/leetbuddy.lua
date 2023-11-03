return {
	"Dhanus3133/LeetBuddy.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("leetbuddy").setup({
			domain = "com", -- `cn` for chinese leetcode
			language = "swift",
			limit = 30, -- Number of problems displayed in telescope
			keys = {
				select = "<CR>",
				reset = "<C-r>",
				easy = "<C-e>",
				medium = "<C-m>",
				hard = "<C-h>",
				accepted = "<C-a>",
				not_started = "<C-y>",
				tried = "<C-t>",
				page_next = "<C-l>",
				page_prev = "<C-h>",
			},
		})
	end,
	keys = {
		{ "<leader>bl", "<cmd>LBQuestions<cr>", desc = "List Questions" },
		{ "<leader>bv", "<cmd>LBQuestion<cr>", desc = "View Question" },
		{ "<leader>br", "<cmd>LBReset<cr>", desc = "Reset Code" },
		{ "<leader>bt", "<cmd>LBTest<cr>", desc = "Run Code" },
		{ "<leader>bs", "<cmd>LBSubmit<cr>", desc = "Submit Code" },
	},
}
