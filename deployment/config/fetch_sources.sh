#!/bin/sh

test -d /git/sources/classic || (cd /git/sources && git clone https://github.com/wetfish/classic)
test -d /git/sources/memes || (cd /git/sources && git clone https://github.com/itsrachelfish/memes)
test -d /git/sources/online || (cd /git/sources && git clone https://github.com/wetfish/online)
