################################
# MacOS Defaults
################################

defaults write com.apple.finder _FXShowPosixPathInTitle true                                               # show path in finder title bar
defaults write com.apple.Finder AppleShowAllFiles true                                                     # show hidden files
defaults write -g com.apple.mouse.scaling 12                                                               # bump mouse speed
defaults write -g com.apple.trackpad.scaling 12                                                            # bump trackpad speed
defaults write -g ApplePressAndHoldEnabled -bool false                                                     # disable keyboard press and hold
defaults write -g InitialKeyRepeat 15                                                                      # lower keyboard initial key repeat
defaults write -g KeyRepeat 2                                                                              # bump key repeat speed
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -int 0                                  # prevent period after double-space
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false                              # disable smart quotes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false                               # disable smart dashes
defaults write com.apple.TextEdit SmartQuotes -bool false                                                  # disable smart quotes for TextEdit
defaults write com.apple.TextEdit SmartDashes -bool false                                                  # disable smart dashes for TextEdit

################################
# Tooling
################################

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"         # install brew
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"                       # install oh-my-zsh

brew tap doctorpoor/dasd
brew tap doctorpoor/pwdrng
brew install \
  dasd \
  htop \
  pre-commit \
  pwdrng \
  thefuck \
  vim \
  zsh-syntax-highlighting \

brew install --cask \
  audacity \
  brave-browser \
  chromium \
  clipy \
  firefox \
  gimp \
  google-chrome \
  inkscape \
  iterm2 \
  licecap \
  spotify \
  sublime-text \
  vlc \
  vscodium \
  webstorm \
  whatsapp \

ln -i ./zsh/perry.zsh-theme ~/.oh-my-zsh/themes/                                                                        # add zsh theme
ln -i ./zsh/.zshrc ~                                                                                                    # update .zshrc

mkdir -p ~/.vim/colors; ln -i ./vim/.vim/colors/monokai.vim ~/.vim/colors/                                              # add vim theme
ln -i ./vim/.vimrc ~                                                                                                    # update .vimrc

ln -i ./sublime_text/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text/Packages/User/        # update sublime_text keybindings
ln -i ./sublime_text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/           # update sublime_text settings

ln -i ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/                                               # update vscode keybindings
ln -i ./vscode/settings.json ~/Library/Application\ Support/Code/User/                                                  # update vscode settings

ln -i ./iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/                                                       # update iterm2 preferences
defaults read com.googlecode.iterm2
