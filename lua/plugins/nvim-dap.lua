vim.cmd([[
nnoremap <silent> <f9> :lua require'dap'.toggle_breakpoint()<cr>
nnoremap <silent> <f5> :lua require'dap'.continue()<cr>
nnoremap <silent> <f10> :lua require'dap'.step_over()<cr>
nnoremap <silent> <f11> :lua require'dap'.step_into()<cr>
nnoremap <silent> <f12> :lua require'dap'.step_out()<cr>
]])

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
