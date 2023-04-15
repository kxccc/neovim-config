return {
	"jackMort/ChatGPT.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>p", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
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
