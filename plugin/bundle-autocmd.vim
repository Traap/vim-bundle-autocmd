" {{{ bundle-autocmd.vim 

if exists('g:loaded_bundle_autocmd')
  finish
endif
let g:loaded_bundle_autocmd=1

" -------------------------------------------------------------------------- }}}
" {{{ Auto commands for filetypes.

augroup asciidoc_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.adoc,*adoci,*.asciidoc,README
        \ setlocal filetype=asciidoc
augroup END

augroup tex_group 
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.tex,*.bbl,*.bib,*.texx,*.texb,*.cls
        \ setlocal filetype=tex
augroup END

augroup mutt_group 
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.muttrc 
        \ setlocal filetype=muttrc
augroup END

augroup config_group 
  autocmd!
  autocmd BufRead,BufNewFile 
        \ config 
        \ setlocal filetype=config nowrap tw=117
augroup END

augroup csv_group 
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.csv
        \ setlocal filetype=csv nowrap tw=0
augroup END

augroup help_group
  autocmd!
  autocmd FileType 
        \ help
        \ setlocal number tw=78
augroup END

augroup journal_group 
  autocmd!
  autocmd BufRead,BufNewFile 
        \ *.journal
        \ setlocal filetype=journal
augroup END

augroup markdown_group
  autocmd!
  autocmd BufRead,BufNewFile 
        \ *.md
        \ setlocal filetype=markdown
augroup END

augroup spell_group 
  autocmd!
  autocmd FileType 
        \ journal,markdown,md,tex
        \ setlocal spell
augroup END

augroup yaml_group
  autocmd!
  autocmd BufRead,BufNewFile 
        \ *.yaml 
        \ setlocal nowrap tw=80
augroup END

" -------------------------------------------------------------------------- }}}
