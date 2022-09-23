include .env
export

azure:
	@ ansible-playbook -i hosts azure.yml 

start-minikube:
	@ minikube start --memory=2g --cpus=2 --driver=docker

amz:
	@ ansible-playbook --private-key ${HOME}/.ssh/aqaurius6666-key.pem -i hosts amz.yml 
vps:
	@ ansible-playbook --private-key ${HOME}/.ssh/aqaurius6666-key.pem -i hosts vps.yml 

local:
	@ echo "Enter sudo password !!!"
	@ ansible-playbook -i hosts local.yml --ask-become-pass

my-ubuntu:
	@ echo "Enter sudo password !!!"
	@ ansible-playbook -i hosts my-ubuntu.yml --ask-become-pass