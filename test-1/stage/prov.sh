#!/bin/bash
#This is the master provision script.

ansible-playbook nodes/web.yml
ansible-playbook nodes/app.yml
ansible-playbook nodes/db.yml
