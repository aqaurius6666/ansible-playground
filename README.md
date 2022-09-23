# Ansible playgroud
This repository contains automatic installation of common tech stuff: eg Docker, programing language, etc ... \
You can use this to install easily tech stuff. 

# Prerequisite
You need install Ansible to unlock this repository. \
Here is instruction for Ansible installtion. 
#### _For Ubuntu_
```shell
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

# How to use
1. You need create your own `own.yaml` file.
2. You can follow `local.yaml` or `my-ubuntu.yaml` as example.
3. In `host`, value is `local`
4. In `role`, pass array of tech stuff you need to install. All available to install are in `roles` folder.\
For example, I need to install `docker`, my `own.yaml` looks like that:
```yaml
---
- name: install docker
  hosts: local
  roles:
    - docker
```
5. You need create your own `hosts` file. `hosts` file contains config of target machine that ansible runs automation task on.\
For example, I want ansible to run automation task on my local machine, I need define `[local]` partition for local connection.
```
[local]
localhost ansible_connection=local ansible_user=<user that ansible run on behalf>
```
6. Finally, run this command
```shell
ansible-playbook -i hosts own.yml --ask-become-pass
```
Enter your sudo password, and see miracles.

# More
You can configurate version of tech stuff you want to install in `group_vars/all`.
# Have fun !!!

