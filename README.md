# rund
simple fish function to run commands on cd

## Installation
```sh
fisher install marcelarie/rund
```

## Usage
`rund` will check automatically for a `.rundir` file in the current directory and source the
commands in it. 

If you did not use a plugin manager to install `rund`, you will need to source
it in your `config.fish` file.
```sh
source /path/to/rund.fish
```


Lets say you have a `.rundir` file in your project directory with the following content:
```sh
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

What will happen is that everytime you `cd` into the directory, you will have a
beautiful running emoji in your terminal.

Of course this is a very simple example, you can have more complex commands for
example to start a development server, or to run tests, etc.

Enjoy!

