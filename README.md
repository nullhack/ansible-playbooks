# ansible-playbooks

Ansible playbooks for server/node configuration

```bash
sudo apt install ansible -y
ansible-playbook setup/playbooks/setup_local_ansible.yaml -K
```

Set up a bitwarden account and entries: dev_s0_admin, dev_n0_admin

Install bw client, run 'bw login', or 'bw unlock' and set the BW_SESSION environment variable

```bash
ansible-playbook -i hosts.yml setup/playbooks/configure_nodes.yaml --tags new
```

```bash
export DEPLOY_ENVIRONMENT=prod
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook --inventory setup/hosts.yaml setup/playbooks/configure_nodes.yaml --tags new --limit "n0"

```
