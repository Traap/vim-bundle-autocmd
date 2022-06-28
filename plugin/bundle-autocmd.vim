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
        \ *.adoc,*.adoci,*.asciidoc
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
  autocmd FileType *.json syntax match Comment +\/\/.\+$+
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
" {{{ Remove whitespaces

augroup RemoveWhiteSpaceGroup
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" -------------------------------------------------------------------------- }}}
" {{{ Spell

" Hack: Disable to run a few test.
" augroup spell_group
"   autocmd!
"   autocmd FileType
"         \ journal,tex,wiki,yaml
"         \ setlocal spell
" augroup END

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
  autocmd FileType           *.md,*.markdown,*.wiki setlocal foldlevelstart=2
  autocmd BufRead,BufNewFile *.md,*.markdown,*.wiki setlocal filetype=wiki
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
