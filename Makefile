include .env
export

azure:
	@ ansible-playbook --private-key ${HOME}/.ssh/anygonow_redis.pem -i hosts site.yml 

start-minikube:
	@ minikube start --memory=2g --cpus=2

amz:
	@ ansible-playbook --private-key ${HOME}/.ssh/aqaurius6666-key.pem -i hosts amz.yml 

local:
	@ echo "Enter sudo password !!!"
	@ ansible-playbook -i hosts local.yml --ask-become-pass