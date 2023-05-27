return {
	"nvim-orgmode/orgmode",
	event = { "VeryLazy" },
	dependencies = {
		{
			"akinsho/org-bullets.nvim",
			opts = {
				concealcursor = true,
			},
		},
	},
	config = function()
		local path = "~/Documents/org/"
		require("orgmode").setup_ts_grammar()
		require("orgmode").setup({
			org_agenda_files = { path .. "*" },
			org_capture_templates = {
				t = {
					description = "Task",
					template = "** TODO %?\n   %U",
					target = path .. "task.org",
					headline = "inbox",
				},
				j = {
					description = "Journal",
					template = "*** %T\n\n%?\n",
					target = path .. "journal.org",
				},
				e = "Event",
				er = {
					description = "recurring",
					template = "** %?\n   %T",
					target = path .. "calendar.org",
					headline = "recurring",
				},
				eo = {
					description = "one-time",
					template = "** %?\n   %T",
					target = path .. "calendar.org",
					headline = "one-time",
				},
			},
		})
	end,
}
