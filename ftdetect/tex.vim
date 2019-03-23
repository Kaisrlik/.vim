augroup __latex__
	if exists("did_load_filetypes")
		finish
	endif

	au!
	autocmd BufRead,BufNewFile *.tex inoremap ,ch \chapter{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,sa \section{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,sb \subsection{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,sc \subsubsection{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,ee \emph{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,tt \texttt{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,bb \textbf{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,uv \uv{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,vv \verb$$<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,hh \helpref{}{}<Left><Left><Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,cen \begin{center}<CR><CR>\end{center}<Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,quo \begin{quote}<CR><CR>\end{quote}<Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,tab \begin{tabular}{ll}<CR><CR>\end{tabular}<Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,tbl \begin{table}[htp]<CR><CR>\caption{}<CR>\label{}<CR>\end{table}<C-O>3k
	autocmd BufRead,BufNewFile *.tex inoremap ,ver \begin{verbatim}<CR><CR>\end{verbatim}<Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,qv \begin{quote}\begin{verbatim}<CR><CR>\end{verbatim}\end{quote}<Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,fig \begin{figure}[htp]<CR><CR>\caption{}<CR>\label{}<CR>\end{figure}<C-O>3k
	autocmd BufRead,BufNewFile *.tex inoremap ,it \begin{itemize}<CR>\item <CR>\end{itemize}<CR><Up><Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,en \begin{enumerate}<CR>\item <CR>\end{enumerate}<CR><Up><Up>
	autocmd BufRead,BufNewFile *.tex inoremap ,ii \item<Space>
	autocmd BufRead,BufNewFile *.tex inoremap ,in \index{!}<Left><Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,ff \footnote{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,re \ref{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,ll \label{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,ci \cite{}<Left>
	autocmd BufRead,BufNewFile *.tex inoremap ,eq \begin{equation}<CR><CR>\end{equation}<CR><up><up>
	autocmd BufRead,BufNewFile *.tex set spell
	autocmd FileType tex,plaintex let b:comment_leader = '% '
"	autocmd BufRead,BufNewFile *.tex set spelllang=en
augroup END

