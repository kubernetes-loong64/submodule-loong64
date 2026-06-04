# Set shell to bash for better compatibility
SHELL := /usr/bin/env bash

# Set default target when running 'make' without arguments
.DEFAULT_GOAL := help

# Display help information with colored output
# Parses comments with '##' and formats them nicely
help: ## Show help information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9._-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Work branch variables — fill in your branch names
CONTAINERD_WORK_BRANCH  ?= loong64-v2.3.1
COREDNS_WORK_BRANCH     ?= loong64-v1.14.2
CRI_TOOLS_WORK_BRANCH   ?= loong64-v1.36.0
DOT_GITHUB_WORK_BRANCH  ?= main
ETCD_WORK_BRANCH        ?= loong64-v3.6.8
KUBERNETES_WORK_BRANCH  ?= loong64-v1.36.1
MAIN_WORK_BRANCH        ?= main
MOBY_WORK_BRANCH        ?= loong64-docker-v29.5.1
PLUGINS_WORK_BRANCH     ?= loong64-v1.9.1
RELEASE_WORK_BRANCH     ?= loong64-v0.21.1
TEMPLATE_WORK_BRANCH    ?= main

# Mark targets as phony (not actual files)
.PHONY: help checkout-all-main checkout-all-work

checkout-all-main: ## Checkout main branch for main repo and all submodules
	git checkout main
	git submodule foreach --recursive 'git checkout main || :'

checkout-all-work: ## Checkout work branch for main repo and all submodules
	git checkout $(MAIN_WORK_BRANCH)
	cd .github && git checkout $(DOT_GITHUB_WORK_BRANCH) || :
	cd containerd-loong64 && git checkout $(CONTAINERD_WORK_BRANCH) || :
	cd coredns-loong64 && git checkout $(COREDNS_WORK_BRANCH) || :
	cd cri-tools-loong64 && git checkout $(CRI_TOOLS_WORK_BRANCH) || :
	cd etcd-loong64 && git checkout $(ETCD_WORK_BRANCH) || :
	cd kubernetes-loong64 && git checkout $(KUBERNETES_WORK_BRANCH) || :
	cd moby-loong64 && git checkout $(MOBY_WORK_BRANCH) || :
	cd plugins-loong64 && git checkout $(PLUGINS_WORK_BRANCH) || :
	cd release-loong64 && git checkout $(RELEASE_WORK_BRANCH) || :
	cd template-loong64 && git checkout $(TEMPLATE_WORK_BRANCH) || :
