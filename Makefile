
.PHONY: defualt install mac vim screen git ssh mysql siege bash mac-bash karabiner mac-php npm
default: install

install: vim screen git ssh mysql siege bash npm

mac: install karabiner mac-php mac-bash

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
	grep '._bashrc' ~/.bash_profile >/dev/null || echo "source ~/._bashrc" >> ~/.bash_profile
	cp _bashrc ~/._bashrc
	grep '._bashrc' ~/.bashrc >/dev/null || echo "source ~/._bashrc" >> ~/.bashrc

mac-bash:
	cp _bash_profile_mac ~/._bash_profile_mac
	grep '._bash_profile_mac' ~/.bash_profile >/dev/null || echo "source ~/._bash_profile_mac" >> ~/.bash_profile

karabiner:
	mkdir -p ~/.config/karabiner/
	cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
	mkdir -p ~/.config/karabiner/assets/complex_modifications/
	cp karabiner/assets/complex_modifications/1501466982.json ~/.config/karabiner/assets/complex_modifications/1501466982.json

mac-php:
	sudo cp /etc/php.ini.default /etc/php.ini
	sudo sed -i ''  's/display_errors = Off/display_errors = On/' /etc/php.ini
	sudo sed -i ''  's/display_startup_errors = Off/display_startup_errors = On/' /etc/php.ini

npm:
	cp npmrc ~/.npmrc

