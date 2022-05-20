#!/bin/bash

perl ${PREFIX}/bin/cpanm App::Cmd
perl Makefile.PL
make
# make test
make install
