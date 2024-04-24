-- bootstrap lazy.nvim, LazyVim and your plugins
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
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
]])

vim.cmd([[
autocmd filetype c nnoremap <F9> :w <bar> !gcc -Wall -g %<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 -Wall %<CR>
]])
