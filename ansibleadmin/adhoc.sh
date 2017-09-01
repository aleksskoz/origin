#!/bin/bash

useradd -m ansible
ansible all -m copy -a "src=/home/ansibleadmin/runme.sh dest=/usr/bin/runme.sh"
ansible all -m file -a "dest=/usr/bin/runme.sh mode=755 owner=ansible group=ansible"
ansible all -a "/usr/bin/runme.sh" -b ansible
