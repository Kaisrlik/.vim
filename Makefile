CURDIR = $(shell pwd)

.PHONY: fonts bundle

all: bundle fonts

bundle:
	echo "Installing vim plugins"
	git submodule update --init --recursive
	cd ./bundle/YouCompleteMe && ./install.py --clang-completer

fonts:
	echo "Installing fonts ... "
	./fonts/powerline/install.sh

install:
	rm -rf ~/.vim
	touch ~/.vim
	ln -sf $(CURDIR) ~/.vim
	ln -sf $(CURDIR)/vimrc ~/.vimrc

packages:
	apt-get install exuberant-ctags
