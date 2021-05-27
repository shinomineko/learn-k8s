SHELL := bash

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: set
set:  ## set current context to a namespace `make set ns=dev`
	@kubectl config set-context --current --namespace $(ns)

.PHONY: clean
clean:  ## clean current namespace
	@kubectl delete all --all
