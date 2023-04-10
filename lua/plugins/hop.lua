return {
	{
		"phaazon/hop.nvim",
		version = "v2",
		event = { "VeryLazy" },
		dependencies = {
			"zzhirong/hop-zh-by-flypy",
		},
		config = function()
			require("hop").setup({
				extensions = {
					"hop-zh-by-flypy",
				},
			})
		end,
	},
	{
		"zzhirong/hop-zh-by-flypy",
		event = { "VeryLazy" },
		dependencies = {
			"phaazon/hop.nvim",
		},
		config = function()
			require("hop-zh-by-flypy").setup({
				-- 注意: 本扩展的默认映射覆盖掉了一些常用的映射: f, F, t, T, s
				-- 设置 set_default_mappings 为 false 可关闭默认映射.
				set_default_mappings = true,
			})
		end,
	},
}
