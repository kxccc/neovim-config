local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ";"
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
})

-- 终端返回普通模式
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- 切换
vim.keymap.set("n", "<space>", "<C-w>", { remap = true })
vim.keymap.set("n", "]t", "<cmd>tabnext<cr>", { desc = "Next tab" })
vim.keymap.set("n", "[t", "<cmd>tabprevious<cr>", { desc = "Previous tab" })

-- 使用 Q 录制宏
vim.keymap.set("n", "Q", "q", { remap = false, desc = "Record" })
-- 使用 q 关闭窗口
vim.keymap.set("n", "q", function()
	local filetype = vim.bo.filetype
	local buftype = vim.bo.buftype
	if filetype == "TelescopePrompt" then
		vim.cmd("close!")
		return
	end
	if buftype == "" then
		return
	end

	local mappings = vim.api.nvim_buf_get_keymap(0, "n")
	for _, map in ipairs(mappings) do
		if map.lhs == "<C-C>" then
			vim.cmd("ChatGPT")
			return
		end
	end

	vim.cmd("close")
end, { remap = false, desc = "Close" })

-- 取消搜索高亮
vim.keymap.set("n", "<leader><esc>", "<cmd>nohlsearch<cr>", { desc = "No Highlight" })

-- 复制到系统剪切板
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]], { desc = "Copy to Clipboard" })

-- 命令模式后切换英文输入法
vim.keymap.set("c", "<CR>", function()
	local ok, _ = pcall(vim.fn.jobstart, { "im-select", "com.apple.keylayout.ABC" })
	if not ok then
		vim.api.nvim_err_writeln("找不到im-select")
	end
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, false, true), "n", false)
end, { desc = "Switch to English" })

-- open in xcode
vim.keymap.set("n", "<leader>ox", function()
	-- 当前文件
	local current_file = vim.fn.expand("%:p")
	-- 当前行
	local current_line = vim.fn.line(".")
	vim.fn.jobstart({
		"xed",
		"-l",
		current_line,
		current_file,
	})
end, { desc = "Xcode" })

-- 始终显示信号栏
vim.opt.signcolumn = "yes"

vim.cmd([[
" 关闭鼠标
set mouse=
" 关闭增强搜索
set noincsearch
" 高亮当前行
set cursorline

" 显示行号
set number
" show existing tab with x spaces width
set tabstop=4
" when indenting with '>', use x spaces width
set shiftwidth=4
" on pressing tab, insert spaces
set expandtab
]])
