" 插件管理器
lua require('plugins')


" 终端返回普通模式
tnoremap <Esc> <C-\><C-n>
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
