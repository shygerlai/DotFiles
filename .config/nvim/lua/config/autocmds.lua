-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font:h12"
end
vim.g.autoformat = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.cmd([[
inoremap {<CR> {<CR>}<Esc>O
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
set cindent
set smartindent
]])