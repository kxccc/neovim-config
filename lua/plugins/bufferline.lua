return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true

		-- 关闭缓冲区
		vim.keymap.set("n", "<leader>w", function()
			local id = vim.api.nvim_get_current_buf()
			vim.cmd("BufferLineCyclePrev")
			vim.cmd("bd " .. id)
		end, { desc = "Close Buffer" })

		vim.keymap.set("n", "gt", "<cmd>BufferLinePick<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
		vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })

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
