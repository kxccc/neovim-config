vim.keymap.set("n", "<f9>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<f5>", "<cmd>lua require'dap'.continue()<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<f10>", "<cmd>lua require'dap'.step_over()<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<f11>", "<cmd>lua require'dap'.step_into()<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<f12>", "<cmd>lua require'dap'.step_out()<cr>", { silent = true, noremap = true })

local dap = require("dap")

dap.adapters.codelldb = {
	type = "server",
	port = "13000",
	executable = {
		command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
		args = { "--port", "13000" },
	},
}

dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/a.out", "file")
		end,
		cwd = "${workspaceFolder}",
	},
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
