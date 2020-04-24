#!/usr/bin/env bash
# Configure Python3

if test "$(command -v pip3)"; then
  pip3 install --upgrade pip3
  pip3 install --upgrade setuptools
  CFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip3 install virtualenv
  CFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip3 install --upgrade virtualenvwrapper
fi


# Configure Python2
# This version is no longer supported but ships on OSX as the system python.
if ! test "$(command -v pip3)"; then
  curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py \
    && python2 /tmp/get-pip.py \
    && rm /tmp/git-pip.py
else
  python2 -m pip install --upgrade setuptools
  python2 -m pip install --upgrade virtualenv
  python2 -m pip install --upgrade virtualenvwrapper
fi
