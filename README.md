## Arduino plugin -  Very WIP - you've been warned

Build, upload and monitor arduino sketches from zsh. Reuses `.vscode/arduino.json` if available else you can set env vars.

### Needs
1. [arduino-cli](https://github.com/arduino/arduino-cli)
2. `jq` - sudo apt install jq

### Setup
. clone this somewhere in your $FPATH
. In your sketch folder
    - `ar_build`, `ar_upload`, `ar_env`

