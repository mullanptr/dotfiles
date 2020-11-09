set nocompatible              " required
filetype off                  " required

set belloff=all

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" " Add all your plugins here (note older versions of Vundle used Bundle
		" instead of Plugin)
"
"
" " All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

set relativenumber " show absolut current line; and all others relative to this

syn on
set number
set autoindent
set background=dark
set ruler
ab uint unsigned int
ab teh the
"ab pdb import pdb; pdb.set_trace();
set hls
set ic
set is
set tabstop=4 
set shiftwidth=4
set expandtab
set formatoptions-=tc " no autolinebreak at long lines

set encoding=utf-8
set fileencoding=utf-8

" past with come to end of line
nmap E $p

"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" Switch off Ctrl+B; earlier was cought by tmux - but that doesnt do it
" anymore
map <c-b> <nop>
imap <c-b> <nop>

" turn off compatiblility to vi
set nocompatible

filetype plugin on
"

" fuzzy file finder (also in subfolders)
set path+=**
" Display matching when press 'tab'
set wildmenu

" Create the 'tags' file
" command! MakeTags !ctags -R .

" NeoBundle 'dhruvasagar/vim-table-mode'

" Python indention
autocmd BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
"	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

autocmd FileType *.tex
    \set spell spelllang=en
syntax spell toplevel " Sometimes spell-checker does not work in latex, because it conflicts with the highlighting of latex syntax.


set nojoinspaces " Avoid double space after auto-textwrap

" No autoindent for text files (e.g. when prev. line ended with a comma)
"autocmd FileType tex setlocal nocindent
"autocmd FileType text setlocal nocindent
autocmd BufNewFile,BufRead,BufReadPre *.tex
    \ set nocindent |
    \ set ruler |
    \ set colorcolumn=120 | 
    \ highlight ColorColumn ctermbg=235 guibg=#2c2d27 " ruler is grey

"" macros for latex:
" doublespace in insert-mode: go to (change) next <++>
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex,*.html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
                                    
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;e \emph{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;b \textbf{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;i \textit{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;t \texttt{}<Space><++><Esc>F{a
                                    
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;u \underline{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;sec \section{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;subsec \subsection{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;subsubsec \subsubsection{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;ref ~\ref{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;lab \label{}<Space><++><Esc>F{a
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;cite ~\cite{}<Space><++><Esc>F{a
                                    
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex vnoremap ;( <Esc><Esc>`<i(<Esc>`>a)<Esc>
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex vnoremap ;[ <Esc><Esc>`<i[<Esc>`>a]<Esc>
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex vnoremap ;{ <Esc><Esc>`<i{<Esc>`>a}<Esc>
                                    
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;fig \begin{figure}[t]<Enter><tab>\centering<Enter>\includegraphics[width=\textwidth]{<++>}<Enter>\caption{<++>}<Enter>\label{fig:<++>}<Enter><Backspace><Backspace><Backspace><Backspace>\end{figure}<Enter><++><Esc>4kf<"_c4l

" html
" Read or Write html -> autoindent
"autocmd BufNewFile,BufRead *.html :normal gg=G
autocmd FileType,BufNewFile,BufRead,BufReadPre *.html inoremap ;p <p><enter><enter></p><esc>ki
autocmd FileType,BufNewFile,BufRead,BufReadPre *.html inoremap ;! <!--<space><space><space>--><esc>hhhhi
autocmd FileType,BufNewFile,BufRead,BufReadPre *.html inoremap ;a <a href="X" class="<++>"><++></a><++><esc>FXs
autocmd FileType,BufNewFile,BufRead,BufReadPre *.html inoremap ;tr <esc>v0"pyA<tr><Enter><Enter><esc>"ppA</tr><esc>k"pp<tab>i

map <F6> <ESC>:setlocal spell! spelllang=en_us<CR>
map <F7> <ESC>:setlocal spell! spelllang=de<CR>



"autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.py inoremap """ """<Enter><Enter>"""<Esc>ki
autocmd FileType,BufNew,BufNewFile,BufRead,BufReadPre *.tex inoremap ;hl {\color{amber}{}}<Space><Esc>hhi
vnoremap ;' <Esc><Esc>`<i'<Esc>`>la'<Esc>
vnoremap ;" <Esc><Esc>`<i"<Esc>`>la"<Esc>
vnoremap ;` <Esc><Esc>`<i`<Esc>`>la`<Esc>
                                    
" Python mark bad whitespaces:w
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable folding
"set foldmethod=indent
"set foldlevel=99

" code un/folding via space
" nnoremap <space> za 

"Plugin 'tmhedberg/SimpylFold'
"Bundle 'Valloric/YouCompleteMe'

"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

let python_highlight_all=1

" Powerline
set rtp+=/localhome/patrick/.local/lib/python3.5/site-packages/powerline/bindings/vim

"if &term =~ '256color' " for vim highlight in tmux over ssh
"  " disable Background Color Erase (BCE)
"  set t_ut=
"endif

" Always show statusline
set laststatus=2

" " Use 256 colours (Use this setting only if your terminal supports 256
set term=screen-256color
" colours)
set t_Co=256
