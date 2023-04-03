return {
	"akinsho/bufferline.nvim",
	version = "v3.*",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		vim.keymap.set("n", "gt", "<cmd>BufferLinePick<CR>", { silent = true, noremap = true })
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or "")
						s = s .. n .. sym
					end
					return s
				end,
			},
		})
	end,
}
