#!/bin/sh

test -d /git/sources/classic || (cd /git/sources && git clone https://github.com/wetfish/classic)
test -d /git/sources/ads || (cd /git/sources && git clone https://github.com/wetfish/ads)
