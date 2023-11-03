return {
	"lukas-reineke/indent-blankline.nvim",
	-- TODO: upgrade
	version = "v2.20.8",
	config = function()
		vim.opt.list = true
		vim.opt.listchars:append("space:⋅")

		require("indent_blankline").setup({
			space_char_blankline = " ",
			show_current_context = true,
		})
	end,
}
