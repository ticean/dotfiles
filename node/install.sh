# Install NVM
export NVM_DIR="$HOME/.nvm"
NVM_CURRENT_VERSION=v0.12.7

if [[ ! -d "$NVM_DIR" ]]; then
  echo "Installing NVM to '$NVM_DIR'."
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
fi

echo "Updating NVM..."
cd "$NVM_DIR"
git checkout $(git describe --abbrev=0 --tags)
source "$NVM_DIR/nvm.sh"

echo "Installing NVM versions."
NVM_VERSIONS=( \
  v0.12.7 \
)
for V in $NVM_VERSIONS; do
  nvm install $V
done

echo "Setting current NVM version to '$NVM_CURRENT_VERSION'"
nvm use $NVM_CURRENT_VERSION

echo "Installing global NPM modules."
NODE_MODULES=( \
  babel \
  eslint \
  grunt-cli \
  instant-markdown-d \
  js-beautify \
  jscs \
  jshint \
  ttystudio \
)

for MOD in $NODE_MODULES; do
  which $MOD > /dev/null 2>&1 || npm install -g $MOD
done
