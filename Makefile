all: fonts bundle

bundle:
	echo "Installing vim plugins"
	git submodule update --init --recursive
	cd ./bundle/YouCompleteMe && ./install.py --clang-completer

fonts:
	echo "Installing fonts ... "
	./fonts/powerline/install.sh
