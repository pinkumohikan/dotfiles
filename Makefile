
.PHONY: defualt install vim screen git ssh mysql siege
default: install

install:
	$(MAKE) vim
	$(MAKE) screen
	$(MAKE) git
	$(MAKE) ssh
	$(MAKE) mysql
	$(MAKE) siege

vim:
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim
	cp -R vim/ftplugin ~/.vim/
	cp -R vim/indent ~/.vim/
	cp -R vim/syntax ~/.vim/
	cp vim/filetype.vim ~/.vim/

screen:
	cp screenrc ~/.screenrc

git:
	cp git/gitconfig ~/.gitconfig

ssh:
	mkdir -p ~/.ssh
	cp ssh/config ~/.ssh/config
	chmod 700 ~/.ssh ~/.ssh/config

mysql:
	cp mysql/my.cnf ~/.my.cnf

siege:
	mkdir -p ~/.siege
	cp siege/siege.conf ~/.siege/siege.conf
