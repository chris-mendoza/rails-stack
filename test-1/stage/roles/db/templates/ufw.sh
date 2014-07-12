#!/bin/bash

ufw allow 22
{% for host in groups['app'] %}
ufw allow from {{ hostvars[host]['rax_addresses']['private'][0]['addr'] }} to any port 3306
{% endfor %}
ufw enable