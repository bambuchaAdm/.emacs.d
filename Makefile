.PHONY=checkout-modules upgrade-module cedet all

all : checkout-modules cedet

checkout-modules:
	git submodule update --init

upgrade-modules:
	git submodule foreach git pull --rebase origin master
	bzr update cedet

cedet:
	bzr checkout --lightweight bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk cedet
	make -C cedet
