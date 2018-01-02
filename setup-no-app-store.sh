#!/bin/sh

# Create folders
mkdir ~/Projects
mkdir ~/Screenshots
mkdir ~/DevTools

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages via brew
brew install git 
brew install node 
brew install chromedriver 
brew install firefoxdriver 
brew install phantomjs 
brew install tree 
brew install wget 
brew install diff-so-fancy
brew tap caskroom/cask
brew cask install google-chrome 
brew cask install firefox
brew cask install iterm2

# Install global npm packages
npm install -g create-react-app
npm install -g mocha
npm install -g protractor

# Set default screenshot location
defaults write com.apple.screencapture location ~/Screenshots 

# Prevent Photos from opening every single time you plug in a device
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Increase bluetooth sound quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Display POSIX path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Don't write .DS_Store files to network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Config git
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Reset UI
killall SystemUIServer
