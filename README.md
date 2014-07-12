ansible-bootstrap.sh gets you started with all the directories you might want. Remove what you do not need.

ansible-newrole.sh will create all of the directories you might want in a role. Remove what you do not need.

To build the nodes you can run the following commands:

ansible-playbook nodes/all.yml
ansible-playbook nodes/
ansible-playbook nodes/
ansible-playbook nodes/

To configure the nodes:

ansible-playbook config/
ansible-playbook config/
ansible-playbook config/
ansible-playbook config/
