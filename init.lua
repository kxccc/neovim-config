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
require("lazy").setup("plugins")

-- 关闭缓冲区
vim.keymap.set("n", "<leader>w", function()
	local id = vim.api.nvim_get_current_buf()
	vim.cmd("bNext")
	vim.cmd("bd " .. id)
end, { desc = "Close Buffer" })
-- 终端返回普通模式
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
-- 切换窗口
vim.keymap.set("n", "<space>", "<C-w>", { remap = true })

vim.cmd([[
" 关闭鼠标
set mouse=

" 显示行号
set number
" show existing tab with x spaces width
set tabstop=4
" when indenting with '>', use x spaces width
set shiftwidth=4
" on pressing tab, insert spaces
set expandtab
]])
