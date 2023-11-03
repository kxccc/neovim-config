return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.1",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer" },
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find Todo" },
	},
	config = function()
		local function flash(prompt_bufnr)
			require("flash").jump({
				pattern = "^",
				label = { after = { 0, 0 } },
				search = {
					mode = "search",
					exclude = {
						function(win)
							return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "TelescopeResults"
						end,
					},
				},
				action = function(match)
					local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
					picker:set_selection(match.pos[1] - 1)
				end,
			})
		end

		local trouble = require("trouble.providers.telescope")
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				-- Format path as "file.txt (path\to\file\)"
				path_display = function(opts, path)
					local tail = require("telescope.utils").path_tail(path)
					return string.format("%s (%s)", tail, path), { { { 1, #tail }, "Constant" } }
				end,

				mappings = {
					i = { ["<c-t>"] = trouble.smart_open_with_trouble, ["<c-s>"] = flash },
					n = { ["<c-t>"] = trouble.smart_open_with_trouble, s = flash },
				},
			},
		})
	end,
}
