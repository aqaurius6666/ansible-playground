include .env
export

azure:
	@ ansible-playbook --private-key ${HOME}/.ssh/anygonow_redis.pem -i hosts site.yml

start-minikube:
	@ minikube start --memory=2g --cpus=2

