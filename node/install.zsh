#!/usr/bin/env bash

# Install NVM
export NVM_DIR="$HOME/.nvm"
NVM_CURRENT_VERSION=stable

if [[ ! -d "$NVM_DIR" ]]; then
  echo "Installing NVM to '$NVM_DIR'."
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
fi

echo "Updating NVM..."
cd "$NVM_DIR" || ( echo "NVM_DIR does not exist!" >&2 && exit 1 )
git checkout "$(git describe --abbrev=0 --tags)"

# shellcheck source=/dev/null
source "$NVM_DIR/nvm.sh"

echo "Installing NVM versions."
NVM_VERSIONS=(stable)

NODE_MODULES=( \
  babel \
  bower \
  eslint \
  grunt-cli \
  gulp \
  instant-markdown-d \
  js-beautify \
  jscs \
  jshint \
  ttystudio \
)

echo "Installing Node version with NPM." >&2
for V in "${NVM_VERSIONS[@]}"
do
  nvm install "$V"
  nvm use "$V"
  echo "Installing global NPM modules." >&2
  for MOD in "${NODE_MODULES[@]}"
  do
    which "$MOD" &>/dev/null || npm install -g "$MOD"
  done
done

echo "Setting current NVM version to '$NVM_CURRENT_VERSION'" >&2
nvm use $NVM_CURRENT_VERSION
