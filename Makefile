SHELL := bash

.PHONY: set
set:
	@kubectl config set-context --current --namespace $(ns)

.PHONY: clean
clean:
	@kubectl delete all --all
