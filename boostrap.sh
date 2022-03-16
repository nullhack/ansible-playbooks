# This script boostraps ansible in the system using a venv environment

# Assumes the system contains python
python -m venv ansible
source ansible/bin/activate
python -m pip install ansible

ansible-playbook playbooks/setup/setup_local_ansible.yaml --ask-become-pass

