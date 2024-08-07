return {
	"nvim-telescope/telescope.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer" },
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find Todo" },
	},
	config = function()
		local trouble = require("trouble.providers.telescope")
		local telescope = require("telescope")

		local preview_file = function(prompt_bufnr)
			local selection = require("telescope.actions.state").get_selected_entry()
			vim.fn.jobstart({ "qlmanage", "-p", selection.value }) -- Mac OS quick look preview
		end

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

		telescope.setup({
			defaults = {
				path_display = {
					filename_first = {},
				},

				mappings = {
					i = { ["<c-t>"] = trouble.smart_open_with_trouble },
					n = {
						["<c-t>"] = trouble.smart_open_with_trouble,
						["<c-d>"] = require("telescope.actions").delete_buffer,
						["<space>"] = preview_file,
						s = flash,
					},
				},
			},
		})
	end,
}
