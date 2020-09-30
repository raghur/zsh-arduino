#! /bin/bash
JQ=jq
ACLI=arduino-cli
err=$(command -v $JQ &> /dev/null || printf "%s" $JQ)
err+=$(command -v $ACLI &> /dev/null || printf ", %s" $ACLI)
if [[ -z "$err" ]]; then
    autoload ar_configure
    autoload ar_build
    autoload ar_upload
    autoload ar_serial
    autoload ar_env
    # echo "arduino plugin registered"
else
    echo "zsh-arduino: Commands not found on path: $err; Plugin not registered"
fi


