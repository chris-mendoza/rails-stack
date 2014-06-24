#!/bin/bash
#This is the master provision script.

ansible-playbook servers.yml
ansible -i scripts/rax.py
