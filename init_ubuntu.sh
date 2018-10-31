#!/bin/bash
#
# Ansible initialization for Ubuntu
# Platform: Unix
#
# Author: Dmitriy Ivanov
#

echo "=== Welcome to Ansible raw init commands runner ==="
echo 

# Environment
ANSIBLE_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Script
if [ ! `command -v pip` ]; then
    sudo python3 ${ANSIBLE_HOME}/deps/get-pip.py
fi
if [ ! `command -v virtualenv` ]; then
    sudo python3 -m pip install virtualenv
fi
if [ ! -d "${ANSIBLE_HOME}/venv" ]; then
    sudo python3 -m virtualenv -p python3 venv
fi

echo
exit 0

