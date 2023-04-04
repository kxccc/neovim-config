return {
	"mfussenegger/nvim-dap",
	keys = {
		{ "<f9>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>" },
		{ "<f5>", "<cmd>lua require'dap'.continue()<cr>" },
		{ "<f10>", "<cmd>lua require'dap'.step_over()<cr>" },
		{ "<f11>", "<cmd>lua require'dap'.step_into()<cr>" },
		{ "<f12>", "<cmd>lua require'dap'.step_out()<cr>" },
	},
	dependencies = "nvim-dap-ui",
	config = function()
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

		dap.configurations.swift = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
					return ".build/debug/" .. project_name
				end,
				cwd = "${workspaceFolder}",
			},
		}

		dap.configurations.c = dap.configurations.cpp
		dap.configurations.objc = dap.configurations.cpp
	end,
}
