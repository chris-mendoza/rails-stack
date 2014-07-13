#!/bin/bash
#This is the master provision script.

#provision nodes
ansible-playbook nodes/web.yml
ansible-playbook nodes/app.yml
ansible-playbook nodes/db.yml

#configure nodes
ansible-playbook -i scripts/rax.py config/all.yml