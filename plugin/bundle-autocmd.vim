" {{{ bundle-autocmd.vim

if exists('g:loaded_bundle_autocmd')
  finish
endif
let g:loaded_bundle_autocmd=1

" -------------------------------------------------------------------------- }}}
" {{{ Asciidoc

augroup asciidoc_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.adoc,*adoci,*.asciidoc,README
        \ setlocal filetype=asciidoc
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Config

augroup config_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ config
        \ setlocal filetype=config nowrap tw=117
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ CSV

augroup csv_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.csv
        \ setlocal filetype=csv nowrap tw=0
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Diary 

command! Diary VimwikiDiaryIndex
augroup diary_group
  autocmd!
  autocmd BufRead,BufNewFile journal.wiki VimwikiDiaryGenerateLinks
augroup end

" -------------------------------------------------------------------------- }}}
" {{{ Help 

augroup help_group
  autocmd!
  autocmd FileType
        \ help
        \ setlocal number tw=78
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Json 

augroup json_group
  autocmd!
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Markdown 

augroup markdown_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.md
        \ setlocal filetype=markdown
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Mutt

augroup mutt_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.muttrc
        \ setlocal filetype=muttrc
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ PlantUml 

augroup plantuml_group 
  autocmd!  
  autocmd BufRead,BufNewFile *.puml,*.wsd :call InitUmlSettings() 
  autocmd BufWritePost       *.puml,*.wsd :call GenerateUmlDiagram() 
  autocmd BufLeave           *.puml,*.wsd :call ClearUmlLaunchFlag()
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Spell 

augroup spell_group
  autocmd!
  autocmd FileType
        \ journal,markdown,md,tex
        \ setlocal spell
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Tex

augroup tex_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.tex,*.bbl,*.bib,*.texx,*.texb,*.cls
        \ setlocal filetype=tex
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Wiki 

augroup wiki_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.wiki
        \ setlocal filetype=wiki
        \ setlocal foldlevelstart=1
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Yaml 

augroup yaml_group
  autocmd!
  autocmd BufRead,BufNewFile
        \ *.yaml
        \ setlocal nowrap tw=80
augroup END

" -------------------------------------------------------------------------- }}}
