# VAULT_PASS := --ask-vault-pass
# sync applies the Ansible configuration.
HOST ?=		haven.dropsonde.net

.PHONY: sync
sync:
	ANSIBLE_NOCOLOR=1 ansible-playbook $(VAULT_PASS) -K -i hosts top.yaml

.PHONY: bootstrap
bootstrap:
	ssh $(HOST) sudo apt-get install python
