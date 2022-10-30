require("dapui").setup({
	floating = {
		max_height = 0.9, -- These can be integers or a float between 0 and 1.
		max_width = 0.9, -- Floats will be treated as percentage of your screen.
	},
})

local keymap = vim.keymap.set
keymap("n", "<leader>d", ":lua require('dapui').toggle()<cr>", { silent = true })
keymap(
	"n",
	"<leader>fd",
	":lua require('dapui').float_element(nil,{width=140,height=200,enter=true})<cr>",
	{ silent = true }
)
keymap(
	"n",
	"<leader>fw",
	":lua require('dapui').float_element('watches',{width=140,height=200,enter=true})<cr>",
	{ silent = true }
)
keymap(
	"n",
	"<leader>fc",
	":lua require('dapui').float_element('console',{width=140,height=200,enter=true})<cr>",
	{ silent = true }
)

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	vim.cmd([[
  NvimTreeClose
  ]])
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
