set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set background=dark
set cindent
set smartindent
set noexpandtab
set tabstop=4     
set shiftwidth=4        
set textwidth=120
set t_Co=256
set showmatch
set backspace=indent,eol,start
set noundofile
set nobackup       
set nowritebackup  
set noswapfile     
set cursorline
set cursorcolumn
syntax on

inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
autocmd filetype c nnoremap <F5> :w <bar> !gcc -Wall -g %<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 -Wall -g %<CR>
autocmd filetype python nnoremap <F6> :w <bar> !python %<CR>
autocmd filetype markdown syn region match start=/\\$\\$/ end=/\\$\\$/
autocmd filetype markdown syn match math '\\$[^$].\{-}\$'
autocmd filetype markdown nnoremap <F5> :MarkdownPreview<CR>
autocmd filetype markdown nnoremap <F6> :MarkdownPreviewStop<CR>

set nu
set laststatus=2
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

call plug#begin()
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'preservim/nerdtree'
call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>

