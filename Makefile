CURDIR = $(shell pwd)

.PHONY: fonts bundle

all: fzf ccls lc-neovim fonts

fzf:
	echo "Installing vim plugins"
	git submodule update --init --recursive
	cd ./bundle/fzf-app/ && ./install

# can be replaced by apt install ccls
ccls:
	sudo apt install ccls
# 	cd bundle/ccls; cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release \
# 		-DCMAKE_PREFIX_PATH=/usr/lib/llvm-13 \
# 		-DLLVM_INCLUDE_DIR=/usr/lib/llvm-13/include \
# 		-DLLVM_BUILD_INCLUDE_DIR=/usr/include/llvm-13/
# 	cd bundle/ccls; cmake --build Release
# 	sudo make install -C bundle/ccls/Release

lc-neovim:
	cd bundle/languageclient-neovim; bash install.sh

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
	apt-get install par exuberant-ctags cmake python3-dev g++ silversearcher-ag \
		shellcheck
