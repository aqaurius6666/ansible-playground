include .env
export

azure:
	@ ansible-playbook --private-key ${HOME}/.ssh/anygonow_redis.pem -i hosts site.yml 