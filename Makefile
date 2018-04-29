CURDIR = $(shell pwd)

.PHONY: fonts bundle

all: bundle fonts

bundle:
	echo "Installing vim plugins"
	git submodule update --init --recursive
	python3 bundle/YouCompleteMe/install.py --clang-completer
	cd ./bundle/fzf-app/ && ./install

fonts:
	echo "Installing fonts ... "
	./fonts/powerline/install.sh

install:
	rm -rf ~/.vim
	touch ~/.vim
	ln -sf $(CURDIR) ~/.vim
	ln -sf $(CURDIR)/vimrc ~/.vimrc

download:

packages:
	apt-get install exuberant-ctags cmake python3-dev g++ silversearcher-ag
