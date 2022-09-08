" 插件管理器
lua require('plugins')
" 主题
lua require('plugins.tokyonight')
" 文件树
lua require('plugins.nvim-tree')
" 代码补全、格式化
lua require('plugins.coc')
" buffer 栏
lua require('plugins.bufferline')
" 底栏
lua require('plugins.lualine')
" 调试
lua require('plugins.nvim-dap')
" 高亮、折叠、选择
lua require('plugins.nvim-treesitter')
" 括号配对
lua require('plugins.nvim-autopairs')
" Git 比对
lua require('plugins.gitsigns')


" 打开文件树
noremap <C-e> <Esc>:NvimTreeFindFile<CR>
" 终端返回普通模式
tnoremap <Esc> <C-\><C-n>
" 显示行号
set number
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" on pressing tab, insert 2 spaces
set expandtab
