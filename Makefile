
.PHONY: defualt install vim screen siege
default: install

install:
	$(MAKE) vim
	$(MAKE) screen
	#$(MAKE) siege

	# gitconfig
	cp gitconfig ~/.gitconfig

	# ssh config
	mkdir -p ~/.ssh
	chmod 700 ~/.ssh
	cp ssh/config ~/.ssh/config
	chmod 700 .ssh/config

vim:
	mv ~/.vimrc ~/.vimrc.bak >/dev/null 2>&1 || true
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin
	cp vim/ftplugin/* ~/.vim/ftplugin/
	cp vim/filetype.vim ~/.vim/filetype.vim

screen:
	cp screenrc ~/.screenrc

siege:
	mkdir -p ~/.siege
	cp siege/siege.conf ~/.siege/siege.conf
