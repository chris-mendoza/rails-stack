#!/bin/bash
#This is the master provision script.

ansible-playbook web.yml
ansible-playbook app.yml
ansible-playbook db.yml
