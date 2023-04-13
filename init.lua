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

vim.cmd([[
" 终端返回普通模式
tnoremap <silent> <Esc> <C-\><C-n>
" 切换窗口
nnoremap <silent> <Space> <C-w>
" 关闭缓冲区
nnoremap <silent> <leader>w :bd<cr>:bp<cr>

" 显示行号
set number
" show existing tab with x spaces width
set tabstop=4
" when indenting with '>', use x spaces width
set shiftwidth=4
" on pressing tab, insert spaces
set expandtab
]])
