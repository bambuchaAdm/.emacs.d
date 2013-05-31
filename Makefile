.PHONY=checkout-modules upgrade-module cedet upgrade-cedet upgrade all

all : checkout-modules cedet

upgrade : upgrade-modules upgrade-cedet

checkout-modules:
	git submodule update --init

upgrade-modules:
	git submodule foreach git pull --rebase origin master

cedet:
	bzr checkout --lightweight bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk cedet
	make -C cedet

upgrade-cedet:
	bzr updatre cedet
	make -C cedet
