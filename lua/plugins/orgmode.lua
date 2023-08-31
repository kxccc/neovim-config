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
		local path = "~/dev/docs/org/"
		require("orgmode").setup_ts_grammar()
		require("orgmode").setup({
			org_agenda_files = { path .. "*" },
			org_todo_keywords = { "TODO", "SCH", "WAIT", "|", "DONE" },
			win_split_mode = "vertical",
			org_capture_templates = {
				t = {
					description = "Task",
					template = "** %?\n   %U",
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
					template = "** SCH %?\n   %U SCHEDULED: ",
					target = path .. "calendar.org",
					headline = "recurring",
				},
				eo = {
					description = "one-time",
					template = "** SCH %?\n   %U SCHEDULED: ",
					target = path .. "calendar.org",
					headline = "one-time",
				},
			},
		})
	end,
}
