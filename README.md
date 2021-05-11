# ansible-playbooks
Ansible playbooks for server configuration

sudo apt install ansible -y
ansible-playbook playbooks/setup_local_ansible.yml -K

// Set up a bitwarden account and entries: dev_s0_admin, dev_n0_admin
// Install bw client, run 'bw login', or 'bw unlock' and set the BW_SESSION environment variable

ansible-playbook -i hosts.yml playbooks/configure_nodes.yml --tags new
