# ansible-playbooks

Ansible playbooks for server/node configuration

```bash
sudo apt install ansible -y
ansible-playbook playbooks/setup/setup_local_ansible.yaml -K
```

Set up a bitwarden account and entries: dev_s0_admin, dev_n0_admin

Install bw client, run 'bw login', or 'bw unlock' and set the BW_SESSION environment variable

```bash
ansible-playbook -i hosts/hosts.yaml playbooks/setup/configure_nodes.yaml --tags new
```

```bash
export DEPLOY_ENVIRONMENT=prod
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook playbooks/setup/setup_local_ansible.yaml --ask-become-pass

bw login

# export BW_SESSION

bw sync

ansible-playbook --inventory hosts/hosts.yaml playbooks/setup/configure_nodes.yaml --tags new --limit n0

```
