# Quick setup for MacOS

![Screenshot of my shell](https://i.imgur.com/6y8GTBl.png)

Some of my preferences when setting up a new mac includes:
- MacOS defaults
- Daily apps
- Zsh shell settings
- Git aliases
- iTerm settings
- Dev tooling (e.g brew, node.js)
- and [more](https://github.com/DoctorPoor/config/blob/master/setup.sh)

## Installation

To apply the config, open a terminal and simply:

<ol>
  <li> Install git (if you haven't already):</li>

  ```
  $ git -v
  ```

  <li> Clone (or <a href="https://docs.github.com/en/github/getting-started-with-github/fork-a-repo">fork</a>) the repo and change directory into it:</li>

  ```
  $ git clone https://github.com/DoctorPoor/dotfiles.git && cd dotfiles
  ```

  <li> Verify <a href="https://github.com/DoctorPoor/config/blob/master/.zshrc#L5">.zshrc, line 5</a> has your correct `/Users` path (amend if not)</li>
  <li> Run the setup script:</li>

  ```
  $ sh setup.sh
  ```
</ol>

