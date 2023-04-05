return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>c", "<cmd>ChatGPT<cr>" },
	},
	config = function()
		require("chatgpt").setup({
			keymaps = {
				submit = "<C-s>",
				new_session = "<C-b>",
			},
		})
	end,
}
