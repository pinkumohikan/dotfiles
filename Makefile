
.PHONY: defualt install
default: install

install:
	# vimrc
	mv ~/.vimrc ~/.vimrc.bak >/dev/null 2>&1 || true
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin
	cp vim/ftplugin/go.vim ~/.vim/ftplugin/go.vim
	cp vim/filetype.vim ~/.vim/filetype.vim
