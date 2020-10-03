#! /bin/bash
JQ=jq
ACLI=arduino-cli
err=$(command -v $JQ &> /dev/null || printf "%s" $JQ)
err+=$(command -v $ACLI &> /dev/null || printf ", %s" $ACLI)
if [[ -z "$err" ]]; then
    FPATH=$FPATH:"$(0:A)"
    autoload -Uz ar_configure
    autoload -Uz ar_build
    autoload -Uz ar_upload
    autoload -Uz ar_serial
    autoload -Uz ar_env
    $ACLI completion zsh > "$(0:A)/_arduino-cli"
    # echo "arduino plugin registered"
else
    echo "zsh-arduino: Commands not found on path: $err; Plugin not registered"
fi


