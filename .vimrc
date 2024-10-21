source $VIMRUNTIME/vimrc_example.vim
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set noexpandtab
set tabstop=4     
set shiftwidth=4        
set textwidth=120
set showmatch
set backspace=indent,eol,start
set noundofile
set nobackup       
set nowritebackup  
set noswapfile     
syntax on

inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

set nu
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
