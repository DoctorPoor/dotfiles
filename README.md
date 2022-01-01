# Quick setup for MacOS

![Screenshot of my shell](https://i.imgur.com/6y8GTBl.png)

Configurations include:
- MacOS defaults
- Zsh shell settings
- Git aliases
- iTerm settings
- Command line tools (e.g brew, htop, pwdrng)
- Applications (e.g sublime, chrome)
- and [more](https://github.com/DoctorPoor/config/blob/master/setup.sh)

## Installation

<br />

> :warning: **The following files will be overwritten:**
> - `~/.vimrc`
> - `~/.zshrc`
> - `~/Library/Application Support/Code/User/keybindings.json`
> - `~/Library/Application Support/Code/User/settings.json`
> - `~/Library/Preferences/com.googlecode.iterm2.plist`

<br />

<ol>
  <li>Clone the repo and change directory into it:</li>

  ```
  $ git clone https://github.com/DoctorPoor/dotfiles.git && cd dotfiles
  ```

  <li>Run the setup script:</li>

  ```
  $ sh setup.sh
  ```
</ol>
