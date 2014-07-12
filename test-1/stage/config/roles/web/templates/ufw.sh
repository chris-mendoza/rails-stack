#!/bin/bash

ufw allow 22,80/tcp
{% for host in groups['app'] %}
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3000
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3001
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3002
{% endfor %}
ufw --force enable