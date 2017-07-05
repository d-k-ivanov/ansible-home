#!/bin/bash
#
# Wrapper to run Ansible in playbook mode
# Platform: Unix
#
# Author:   Dmitry Ivanov
#

echo "=== Welcome to Ansible playbook runner ==="
echo

# Environment
ANSIBLE_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REMOTE_USER=$( cat $ANSIBLE_HOME/user 2>/dev/null)

# Script
#ansible-playbook -i $ANSIBLE_HOME/inventory $ANSIBLE_HOME/dell7510.yml -u $REMOTE_USER $@ 
ansible-playbook -i $ANSIBLE_HOME/inventory $ANSIBLE_HOME/dell7510.yml $@ 

echo 
exit 0

