#
# MacOS Defaults
#

defaults write com.apple.Finder AppleShowAllFiles true    # show hidden files
defaults write -g com.apple.mouse.scaling 12    # bump mouse speed
defaults write -g com.apple.trackpad.scaling 12    # bump trackpad speed
defaults write -g ApplePressAndHoldEnabled -bool false    # disable keyboard press and hold
defaults write -g InitialKeyRepeat 15    # lower keyboard initial key repeat
defaults write -g KeyRepeat 0    # bump key repeat speed

#
# Tooling
#

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"    # install brew
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"    # install oh-my-zsh

brew install zsh-syntax-highlighting
brew install thefuck
brew install htop
brew install node
brew install n
brew install yarn

brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install webstorm
brew cask install spotify
brew cask install whatsapp
brew cask install clipy
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install licecap
brew cask install gimp

cp ./zsh/perry.zsh-theme ~/.oh-my-zsh/themes/    # add zsh theme
cp ./zsh/.zshrc ~    # update .zshrc

mkdir -p ~/.vim/colors; cp ./vim/monokai.vim ~/.vim/colors/    # add vim theme
cp ./vim/.vimrc ~    # update .vimrc

