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


defaults write com.apple.controlcenter "NSStatusItem Preferred Position AccessibilityShortcuts" = 454;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Battery" = 247;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position BentoBox" = 147;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Bluetooth" = 359;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position KeyboardBrightness" = 388;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position NowPlaying" = 426;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Sound" = 323;
defaults write com.apple.controlcenter "NSStatusItem Preferred Position WiFi" = 211;
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" = 0;
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible BentoBox" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Clock" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Item-0" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-1" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-2" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-3" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-4" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-5" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-6" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-7" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-8" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true


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
  ghostscript \
  htop \
  md5sha1sum \
  pre-commit \
  pwdrng \
  rsc_2fa \
  thefuck \
  tokei \
  vim \
  zsh-syntax-highlighting \

brew install --cask \
  audacity \
  brave-browser \
  chromium \
  clipy \
  eloston-chromium \
  firefox \
  gimp \
  google-chrome \
  imagemagick \
  inkscape \
  iterm2 \
  kawa \
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
