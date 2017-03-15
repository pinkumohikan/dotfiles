
.PHONY: defualt install
default: install

install:
	# vimrc
	mv ~/.vimrc ~/.vimrc.bak >/dev/null 2>&1 || true
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin
	cp vim/ftplugin/* ~/.vim/ftplugin/
	cp vim/filetype.vim ~/.vim/filetype.vim

	# gitconfig
	cp gitconfig ~/.gitconfig

	# ssh config
	mkdir -p ~/.ssh
	chmod 700 ~/.ssh
	cp ssh/config ~/.ssh/config
