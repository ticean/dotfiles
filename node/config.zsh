export NVM_DIR="$HOME/.nvm"
NVM_DEFAULT_VERSION=stable

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm alias default $NVM_DEFAULT_VERSION > /dev/null # Set default Node.js version
