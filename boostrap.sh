#sudo apt install -y ansible
#sudo apt install -y python-is-python3

python -m venv ansible
source ansible/bin/activate
python -m pip install ansible

ansible-playbook setup/playbooks/setup_local_ansible.yaml --ask-become-pass

