#!/bin/bash
#
# Wrapper to run Ansible in playbook mode
# Platform: Unix
#
# Author:   Dmitriy Ivanov
#

echo "=== Welcome to Ansible playbook runner ==="
echo

# Environment
ANSIBLE_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REMOTE_USER=$( cat ${HOME}/ansible_user 2>/dev/null)

if [ ! $REMOTE_USER ]; then
  echo ">>> Error: Environment is missing!"
  echo "Please run $ANSIBLE_HOME/setup to configure your ansible copy"
  read -n 1 -p "Do you want to run it right now? (y/[Any key to cancel]): " WANT_INIT
  [ "$WANT_INIT" = "y" ] || exit 1
  echo
  $ANSIBLE_HOME/setup
  echo
fi

# Script
ansible-playbook $ANSIBLE_HOME/wsl-ubuntu.yml -u $REMOTE_USER --vault-password-file=${HOME}/ansible_password $@

echo 
exit 0

