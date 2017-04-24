augroup filetypedetect
  au BufRead,BufNewFile *.go setfiletype go
  au BufRead,BufNewFile *.rb setfiletype ruby
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.md setfiletype markdown
  au BufRead,BufNewFile *.pp setfiletype puppet
augroup END
