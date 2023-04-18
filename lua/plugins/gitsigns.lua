return {
	"lewis6991/gitsigns.nvim",
	version = "release",
	event = { "VeryLazy" },
	config = function()
		require("gitsigns").setup({
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						return "]c"
					end
					vim.schedule(function()
						gs.next_hunk()
					end)
					return "<Ignore>"
				end, { expr = true, desc = "Next Hunk" })

				map("n", "[c", function()
					if vim.wo.diff then
						return "[c"
					end
					vim.schedule(function()
						gs.prev_hunk()
					end)
					return "<Ignore>"
				end, { expr = true, desc = "Previous Hunk" })

				-- Actions
				map({ "n", "v" }, "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "stage hunk" })
				map({ "n", "v" }, "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "reset hunk" })
				map("n", "<leader>gS", gs.stage_buffer, { desc = "stage buffer" })
				map("n", "<leader>gu", gs.undo_stage_hunk, { desc = "undo stage hunk" })
				map("n", "<leader>gR", gs.reset_buffer, { desc = "reset buffer" })
				map("n", "<leader>gp", gs.preview_hunk_inline, { desc = "preview hunk" })
				map("n", "<leader>gb", function()
					gs.blame_line({ full = true })
				end, { desc = "blame line" })
				map("n", "<leader>gd", gs.diffthis, { desc = "diff stage" })
				map("n", "<leader>gD", function()
					gs.diffthis("~")
				end, { desc = "diff repository" })
				map("n", "<leader>gt", gs.toggle_deleted, { desc = "toggle deleted" })
			end,
		})
	end,
}
