if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew analytics off
brew update

brew cask install aerial
brew cask install azure-data-studio
brew cask install balenaetcher
brew cask install battle-net
brew cask install bitwarden
brew cask install blender
brew cask install brooklyn
brew cask install calibre
brew cask install chromium
brew cask install discord
brew cask install docker
brew cask install dotnet-sdk
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install google-drive-file-stream
brew cask install gpg-suite
brew cask install hacker-menu
brew cask install handbrake
brew cask install insomnia
brew cask install java
brew cask install joplin
brew cask install kap
brew cask install keybase
brew cask install keycastr
brew cask install krita
brew cask install microsoft-azure-storage-explorer
brew cask install microsoft-edge
brew cask install microsoft-office
brew cask install minecraft
brew cask install mockoon
brew cask install mongodb-compass-community
brew cask install ngrok
brew cask install obs
brew cask install openemu
brew cask install plex-media-player
brew cask install postman
brew cask install rectangle
brew cask install signal
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install visual-studio
brew cask install visual-studio-code

brew tap homebrew/cask-fonts
brew cask install font-fira-code

brew tap azure/functions
brew install azure-functions-core-tools@3

brew install azure-cli
brew install git
brew install gpg
brew install go
brew install htop
brew install httpie
brew install neofetch
brew install node
brew install python
brew install qemu
brew install watch
brew install wget
brew install yarn
brew install zsh-autosuggestions

zshautosuggestions='source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh'

if ! grep -q "$zshautosuggestions" ~/.zshrc; then
    echo "$zshautosuggestions" >> ~/.zshrc
    source ~/.zshrc
fi

brew upgrade
brew upgrade --cask
brew cleanup

npm install -g azurite
npm install -g gitbook-cli
