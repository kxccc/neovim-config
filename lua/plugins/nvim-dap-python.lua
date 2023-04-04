return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	config = function()
		require("dap-python").setup("~/.nix-profile/bin/python")
	end,
}
