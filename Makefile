# VAULT_PASS := --ask-vault-pass
# sync applies the Ansible configuration.
HOST ?=		haven.dropsonde.net
ANSIBLE ?=	ansible-playbook

.PHONY: sync
sync:
	ANSIBLE_NOCOLOR=1 $(ANSIBLE) $(VAULT_PASS) -K -i hosts top.yaml

.PHONY: bootstrap
bootstrap:
	ssh $(HOST) sudo apt-get install python
