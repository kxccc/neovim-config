require("dapui").setup()

local keymap = vim.keymap.set
keymap("n", "<leader>d", ":lua require('dapui').toggle()<cr>", { silent = true })

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
