export NVM_DIR="$HOME/.nvm"
NVM_DEFAULT_VERSION=v0.12.7

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm alias default $NVM_DEFAULT_VERSION  # Set default Node.js version
