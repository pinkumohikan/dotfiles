
.PHONY: defualt install vim screen git ssh mysql siege bash npm
default: install

install: vim screen git ssh mysql siege bash npm

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
	mkdir -p ~/.ssh && chmod 700 ~/.ssh
	cp ssh/config ~/.ssh/config && chmod 700 ~/.ssh/config
	touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys

mysql:
	cp mysql/my.cnf ~/.my.cnf

siege:
	mkdir -p ~/.siege
	cp siege/siege.conf ~/.siege/siege.conf

bash:
	# bashrc
	cp _bashrc ~/._bashrc
	grep '._bashrc' ~/.bashrc >/dev/null || echo "source ~/._bashrc" >> ~/.bashrc
	# bash_profile
	cp _bash_profile ~/._bash_profile
	grep '.bashrc' ~/.bash_profile >/dev/null || echo "source ~/.bashrc" >> ~/.bash_profile
	grep '._bashrc' ~/.bash_profile >/dev/null || echo "source ~/._bashrc" >> ~/.bash_profile
	grep '._bash_profile' ~/.bash_profile >/dev/null || echo "source ~/._bash_profile" >> ~/.bash_profile

npm:
	cp npmrc ~/.npmrc


# for MacOS
.PHONY: mac mac-bash mac-karabiner mac-php
mac: install mac-bash mac-karabiner mac-php

mac-bash:
	cp _bash_profile_mac ~/._bash_profile_mac
	grep '._bash_profile_mac' ~/.bash_profile >/dev/null || echo "source ~/._bash_profile_mac" >> ~/.bash_profile

mac-karabiner:
	mkdir -p ~/.config/karabiner/
	cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
	mkdir -p ~/.config/karabiner/assets/complex_modifications/
	cp karabiner/assets/complex_modifications/1501466982.json ~/.config/karabiner/assets/complex_modifications/1501466982.json

mac-php:
	sudo cp /etc/php.ini.default /etc/php.ini
	sudo sed -i ''  's/display_errors = Off/display_errors = On/' /etc/php.ini
	sudo sed -i ''  's/display_startup_errors = Off/display_startup_errors = On/' /etc/php.ini


# for ISUCON
.PHONY: isucon isucon-git
isucon: install isucon-git

isucon-git:
	cp git/gitconfig.isucon ~/.gitconfig

