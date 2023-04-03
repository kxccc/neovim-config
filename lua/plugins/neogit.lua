return {
	"TimUntersberger/neogit",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		vim.keymap.set("n", "<leader>g", "<cmd>Neogit<cr>", { silent = true, noremap = true })
		require("neogit").setup()
	end,
}
