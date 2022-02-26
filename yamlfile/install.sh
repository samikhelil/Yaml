#!/bin/bash


ansible vps3 -m apt -a "name=apache2 state=latest"
ansible vps3 -m service -a "name=apache2 state=started enabled=yes"
ansible vps3 -m user -a "name=anna"
ansible vps3 -m copy -a "src=/etc/hosts dest=/tmp/"
