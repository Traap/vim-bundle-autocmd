" {{{ bundle-autocmd.vim 
if exists('g:loaded_bundle_autocmd')
  finish
endif
let g:loaded_bundle_autocmd=1
" -------------------------------------------------------------------------- }}}
" {{{ Auto commands for filetypes.
autocmd BufRead,BufNewFile
      \ *.adoc,*adoci,*.asciidoc,README
      \ setlocal filetype=asciidoc

autocmd BufRead,BufNewFile
      \ *.tex,*.bbl,*.bib,*.texx,*.texb,*.cls
      \ setlocal filetype=tex

autocmd BufRead,BufNewFile
      \ *.muttrc 
      \ setlocal filetype=muttrc

autocmd BufRead,BufNewFile
      \ *.csv,*.md 
      \ setlocal filetype=csv, nowrap tw=0

autocmd BufRead,BufNewFile 
      \ *.yaml 
      \ setlocal nowrap tw=80

autocmd BufRead,BufNewFile 
      \ config 
      \ setlocal filetype=config, nowrap tw=117

autocmd BufRead,BufNewFile 
      \ *.txt
      \ setlocal filetype=journal 

autocmd BufRead,BufNewFile 
      \ *.md, *.markdown
      \ setlocal filetype=markdown

autocmd FileType 
      \ help
      \ setlocal number tw=78

" -------------------------------------------------------------------------- }}}
