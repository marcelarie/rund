# rund

A simple shell hook to run commands on directory change for Fish, Bash, and Zsh.

https://github.com/marcelarie/rund/assets/62728887/3f8fc08f-cd3d-4e17-a113-fca79e115af3

## Installation

For Fish:

```shell
fisher install marcelarie/rund
```

For Bash and Zsh, clone the repository and run the install script:

```shell
git clone https://github.com/marcelarie/rund.git
cd rund
sudo ./install.sh
```

## Usage

`rund` will automatically check for a `.rundir` file in the current directory
and source the commands in it.

If you did not use a plugin manager to install `rund`, you will need to source
it in your shell.

For Fish:
Add the following line to your `config.fish` file:

```shell
rund fish | source
```

For Bash:
Add the following line to your `.bashrc` file:

```shell
source rund bash
```

For Zsh:
Add the following line to your `.zshrc` file:

```shell
source $(rund zsh)
```

`rund` will check automatically for a `.rundir` file in the current directory
and source the commands in it.

Lets say you have a `.rundir` file in your project directory with the following content:

```bash
#!/usr/bin/env bash

echo "                🏃"
sleep 0.1
clear
echo "              🏃  "
sleep 0.1
clear
echo "            🏃    "
sleep 0.1
clear
echo "          🏃      "
sleep 0.1
clear
echo "        🏃        "
sleep 0.1
clear
echo "      🏃          "
sleep 0.1
clear
echo "    🏃            "
sleep 0.1
clear
echo "  🏃              "
sleep 0.1
clear
echo "🏃                "
clear
```

What will happen is that every time you `cd` into the directory for the first
time, you will have a beautiful running emoji in your terminal.

`rund` keeps track of the directories and shell session to run the commands
only the first time you `cd` into the directory on that session.

Of course, this is a very simple example. You can have more complex commands
for example to start a development server, run tests, etc.

Enjoy!

## To Do

- [ ] Don't run the commands if the `.rundir` file has not been approved by the user.
    - [x] fish
    - [ ] bash
    - [ ] zsh
