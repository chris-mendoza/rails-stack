#!/bin/bash

ufw allow 22
{% for host in groups['web'] %}
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3000
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3001
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3002
{% endfor %}
{% for host in groups['db'] %}
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3306
{% endfor %}
ufw --force enable