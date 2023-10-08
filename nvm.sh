#!/bin/sh

export NVM_DIR="/home/ertu/.nvm"
nvm() {
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  nvm $@
}