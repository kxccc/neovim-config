" 插件管理器
lua require('plugins')
" 主题
lua require('plugins.tokyonight')
" 文件树
lua require('plugins.nvim-tree')
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
" Git 管理
lua require('plugins.neogit')
" 文件搜索
lua require('plugins.telescope')
" 缩进线
lua require('plugins.indent-blankline')
" mason
lua require('plugins.mason')
" 自动补全
lua require('plugins.nvim-cmp')
" 格式化
lua require('plugins.formatter')
" 错误栏
lua require('plugins.trouble')
" lsp 美化
lua require('plugins.lspsaga')
" dap ui
lua require('plugins.nvim-dap-ui')
" dap text
lua require('plugins.nvim-dap-virtual-text')
" js ts 调试
lua require('plugins.nvim-dap-vscode-js')
" 自动保存
lua require('plugins.auto-save')


" 终端返回普通模式
tnoremap <Esc> <C-\><C-n>
" 切换窗口
nnoremap <silent> <Space> <C-w>
" 关闭缓冲区
nnoremap <silent> <leader>w :NvimTreeClose<cr>:bd<cr>

" 显示行号
set number
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" on pressing tab, insert 2 spaces
set expandtab
