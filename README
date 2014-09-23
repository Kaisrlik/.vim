.vim
====

git clone https://github.com/Kaisrlik/.vim.git
git submodule init
git submodule update
ln -s /path/to/libclang.so /usr/lib/libclang.so

clang_compl
===

To build and install in one step, type:
$ make install

To build and install in two steps, type:
$ make
$ vim clang_complete.vmb -c 'so %' -c 'q'

linker
==

Example .clang_complete file: >
 -DDEBUG
 -include ../config.h
 -I../common
 -I/usr/include/c++/4.5.3/
 -I/usr/include/c++/4.5.3/x86_64-slackware-linux/
<
