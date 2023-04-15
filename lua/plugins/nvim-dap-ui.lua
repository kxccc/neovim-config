return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
	},
	keys = {
		{ "<leader>d", ":lua require('dapui').toggle()<cr>", desc = "DAP UI" },
		-- { "<leader>fd", ":lua require('dapui').float_element(nil,{width=140,height=200,enter=true})<cr>" },
		-- { "<leader>fw", ":lua require('dapui').float_element('watches',{width=140,height=200,enter=true})<cr>" },
		-- { "<leader>fc", ":lua require('dapui').float_element('console',{width=140,height=200,enter=true})<cr>" },
	},
	config = function()
		require("nvim-dap-virtual-text").setup()
		require("dapui").setup({
			floating = {
				max_height = 0.9, -- These can be integers or a float between 0 and 1.
				max_width = 0.9, -- Floats will be treated as percentage of your screen.
			},
		})
	end,
}
