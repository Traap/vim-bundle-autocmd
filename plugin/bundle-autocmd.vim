" {{{ bundle-autocmd.vim 
if exists('g:loaded_bundle_autocmd')
  finish
endif
" -------------------------------------------------------------------------- }}}
" {{{ Auto commands for filetypes.
autocmd BufRead,BufNewFile *.adoc,*adoci,*.txt,*.asciidoc,README
        \ setlocal filetype=asciidoc

autocmd BufRead,BufNewFile *.tex,*.bbl,*.bib,*.texx,*.texb,*.cls
        \ setlocal filetype=tex

autocmd BufRead,BufNewFile *.muttrc setlocal filetype=muttrc

autocmd BufRead,BufNewFile *.csv,*.md setlocal nowrap tw=0

autocmd BufRead,BufNewFile *.yaml setlocal nowrap tw=80

autocmd BufRead,BufNewFile config setlocal nowrap tw=117

autocmd FileType help setlocal number tw=78
" -------------------------------------------------------------------------- }}}
