# rund
simple fish function to run commands on cd

## Installation

## Usage
`rund` will check for a `.rundir` file in the current directory and source the
commands in it. 

First you need to init `rund` by running the following command:
```sh
rund
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

