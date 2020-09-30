## Arduino plugin -  Very WIP - you've been warned

Build, upload and monitor arduino sketches from zsh. Reuses `.vscode/arduino.json` if available else you can set env vars.

### Needs
1. [arduino-cli](https://github.com/arduino/arduino-cli)
2. `jq` - sudo apt install jq

### Setup
1. clone this somewhere in your $FPATH
2. In your sketch folder, following are available
    - `ar_build`, `ar_upload`, `ar_env`, `ar_serial`

