#!/usr/bin/env bash

# Install Pythons with pyenv.
if test "$(command pyenv)"; then
  pyenv install 2.7.16
  pyenv install 3.8.5

  pyenv global 3.8.5 2.7.16

  pyenv rehash
fi

# Configure Python3
if test "$(command -v pip3)"; then
  pip3 install --upgrade pip
  pip3 install --upgrade setuptools
  pip3 install --upgrade virtualenv
  pip3 install --upgrade virtualenvwrapper
fi

# Configure Python2
# This version is no longer supported but ships on OSX as the system python.
if test "$(command -v pip2)"; then
  pip2 install --upgrade pip
  pip2 install --upgrade setuptools
  pip2 install --upgrade virtualenv
  pip2 install --upgrade virtualenvwrapper
fi
