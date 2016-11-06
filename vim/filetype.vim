augroup filetypedetect
  au BufRead,BufNewFile *.go setfiletype go
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.md setfiletype markdown
augroup END
