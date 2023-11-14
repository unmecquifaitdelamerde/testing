#!/bin/bash
# Install Python3, Python2, git, and figlet
sudo apt-get update
sudo apt-get install python3 python2 git figlet -y
# Check if pip is installed and install bs4, phonenumbers, and whois
if command -v pip &> /dev/null
then
    pip install beautifulsoup4
    pip install phonenumbers
    pip install python-whois
fi
# Check if running in Kali NetHunter with compatible kernel and install bettercap and bluebinder
if [[ $(uname -r) == *"nethunter"* ]]; then
    sudo apt-get install bettercap
    sudo apt-get install bluebinder
fi
# Check if running in Termux and perform necessary setup
if [[ -n $PREFIX ]]; then
    pkg install bettercap
    pkg install bluebinder
fi
# Make the script executable
chmod +x main.sh