
.PHONY: defualt install vim screen git ssh mysql siege
default: install

install:
	$(MAKE) vim
	$(MAKE) screen
	$(MAKE) git
	$(MAKE) ssh
	$(MAKE) mysql
	$(MAKE) siege
	$(MAKE) bash

mac: install karabiner

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
	mkdir -p ~/.git/contrib/completion/
	curl -sS https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git/contrib/completion/git-prompt.sh
	curl -sS https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git/contrib/completion/git-completion.bash
	cp git/gitconfig ~/.gitconfig
	cp git/ignore_global ~/.gitignore_global
	git config --global core.excludesfile ~/.gitignore_global

ssh:
	mkdir -p ~/.ssh
	cp ssh/config ~/.ssh/config
	chmod 700 ~/.ssh ~/.ssh/config

mysql:
	cp mysql/my.cnf ~/.my.cnf

siege:
	mkdir -p ~/.siege
	cp siege/siege.conf ~/.siege/siege.conf

bash:
	cp _bash_profile ~/._bash_profile
	grep '._bash_profile' ~/.bash_profile >/dev/null || echo "source ~/._bash_profile" >> ~/.bash_profile
	cp _bashrc ~/._bashrc
	grep '._bashrc' ~/.bashrc >/dev/null || echo "source ~/._bashrc" >> ~/.bashrc

karabiner:
	mkdir -p ~/.config/karabiner/
	cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
	mkdir -p ~/.config/karabiner/assets/complex_modifications/
	cp karabiner/assets/complex_modifications/1501466982.json ~/.config/karabiner/assets/complex_modifications/1501466982.json
