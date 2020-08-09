# Quick setup for MacOS

## Installation

To apply the config, open a terminal and simply:
- Install git (if you haven't already):
```
$ git -v
```
- Clone (or [fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo)) the repo and change directory into it:
```
$ git clone https://github.com/DoctorPoor/config.git && cd config
```
- Verify [.zshrc, line 5](https://github.com/DoctorPoor/config/blob/master/.zshrc#L5) has your correct `/Users` path (amend if not)
- Run the setup script:
```
$ sh fresh_machine.sh
```

