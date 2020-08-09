# Quick setup for MacOS

![Screenshot of my shell](https://i.imgur.com/cLgPN9l.png)

## Installation

To apply the config, open a terminal and simply:

<ol>
  <li> Install git (if you haven't already):</li>

  ```
  $ git -v
  ```

  <li> Clone (or <a href="https://docs.github.com/en/github/getting-started-with-github/fork-a-repo target="_blank">fork</a>) the repo and change directory into it:</li>

  ```
  $ git clone https://github.com/DoctorPoor/config.git && cd config
  ```

  <li> Verify <a href="https://github.com/DoctorPoor/config/blob/master/.zshrc#L5">.zshrc, line 5</a> has your correct `/Users` path (amend if not)</li>
  <li> Run the setup script:</li>

  ```
  $ sh fresh_machine.sh
  ```
</ol>

