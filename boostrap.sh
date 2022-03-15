sudo apt install -y ansible
ansible-playbook setup/playbooks/setup_local_ansible.yaml --ask-become-pass

export DEPLOY_ENVIRONMENT=dev
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook --inventory setup/hosts.yaml setup/playbooks/configure_nodes.yaml --tags new --limit "n0"

