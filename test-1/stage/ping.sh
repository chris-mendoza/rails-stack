#!/bin/bash
#Ansible Ping entire environment

ansible -i scripts/rax.py web -m ping
ansible -i scripts/rax.py app -m ping
ansible -i scripts/rax.py db -m ping
