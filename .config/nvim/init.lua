require("config.lazy")

vim.cmd([[
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]])

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.cmd([[
set cindent
set smartindent
]])

vim.cmd([[
autocmd filetype c nnoremap <F5> :w <bar> !gcc -Wall -g %<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 -Wall %<CR>
]])

vim.g.autoformat = false

vim.cmd([[
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
]])
