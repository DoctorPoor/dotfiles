# TODO: git configs like user and aliases
# TODO: git ssh with github
# TODO: setting up iTerm theme
# TODO: setting up oh-my-zsh theme
# TODO: setting up git aliases

defaults write com.apple.Finder AppleShowAllFiles true
defaults write -g com.apple.mouse.scaling 12
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install thefuck
brew install htop
brew install node
brew install n
brew install yarn

brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install vlc
brew cask install webstorm
brew cask install spotify
brew cask install whatsapp
brew cask install clipy
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install licecap
brew cask install gimp

