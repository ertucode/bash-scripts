#!/bin/sh

export NVM_DIR="$HOME/.nvm"

function loadnvm () {
    if [ "$NVM_INITTED" != "1" ]; then
      [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
      NVM_INITTED=1
    fi
}

nvm () {
    loadnvm
    command nvm "$@"
}

ng () {
    loadnvm
    command ng "$@"
}

npm () {
    loadnvm
    command npm "$@"
}
