#!/bin/sh

# Create folders
mkdir ~/Projects
mkdir ~/Screenshots
mkdir ~/DevTools

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages via brew
brew install git 
brew install mas 
brew install node 
brew install chromedriver 
brew install elasticsearch 
brew install firefoxdriver 
brew install phantomjs 
brew install maven 
brew install mongodb 
brew install tree 
brew install wget 
brew install diff-so-fancy
brew tap caskroom/cask
brew cask install google-chrome 
brew cask install firefox 
brew cask install iterm2



# Install App Store apps via mas
mas signin
# use mas search [appname] to find id's

mas install 1091189122  # Bear
mas install 409201541   # Pages
mas install 409203825   # Numbers
mas install 441258766   # Magnet
mas install 803453959   # Slack
mas install 1147396723  # Whatsapp
mas install 425424353   # The Unarchiver
mas install 443987910   # 1Password
mas install 918858936   # Airmail3
mas install 937984704   # Amphetamine

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
