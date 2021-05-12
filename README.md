#TODO: add romkatv/zsh4humans to config files

Install `pyenv` with Homebrew but `nvm` manually.

## Install Homebrew
> `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

For Mac with M1 chip (Apple Silicon), 2 versions of Homebrew need to be installed:
- Native version (at `/opt/homebrew`): run Homebrew install script in `arch -arm64 zsh`
- Intel-based version (at `/usr/local/homebrew/`): run Homebrew install script in `arch -x86_64 zsh`

Some aliases for Apple Silicon:
`alias brewr="arch -x86_64 /usr/local/bin/brew $@"`  # Legacy Homebrew (run through Rosetta2)
`alias leg="arch -x86_64 $@"`                        # Run app in legacy mode (through Rosetta2)

Reference: [1](https://www.wisdomgeek.com/development/installing-intel-based-packages-using-homebrew-on-the-m1-mac/), 
[2](https://medium.com/m/global-identity?redirectUrl=https%3A%2F%2Fcodeburst.io%2Fmy-ultimate-m1-mac-developer-setup-cfdb2daeed2d)