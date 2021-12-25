#
# MacOS Defaults
#

defaults write com.apple.Finder AppleShowAllFiles true    # show hidden files
defaults write -g com.apple.mouse.scaling 12    # bump mouse speed
defaults write -g com.apple.trackpad.scaling 12    # bump trackpad speed
defaults write -g ApplePressAndHoldEnabled -bool false    # disable keyboard press and hold
defaults write -g InitialKeyRepeat 15    # lower keyboard initial key repeat
defaults write -g KeyRepeat 2    # bump key repeat speed

#
# Tooling
#

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"    # install brew
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"    # install oh-my-zsh

brew tap doctorpoor/pwdrng
brew install \
  htop \
  pre-commit \
  pwdrng \
  thefuck \
  vim \
  zsh-syntax-highlighting \

brew install --cask \
  brave-browser \
  clipy \
  firefox \
  gimp \
  google-chrome \
  iterm2 \
  licecap \
  spotify \
  sublime-text \
  webstorm \
  whatsapp \
  visual-studio-code \

cp ./zsh/perry.zsh-theme ~/.oh-my-zsh/themes/    # add zsh theme
cp ./zsh/.zshrc ~    # update .zshrc

mkdir -p ~/.vim/colors; cp ./vim/.vim/colors/monokai.vim ~/.vim/colors/    # add vim theme
cp ./vim/.vimrc ~    # update .vimrc
