# Set shell to bash for better compatibility
SHELL := /usr/bin/env bash

# Set default target when running 'make' without arguments
.DEFAULT_GOAL := help

# Display help information with colored output
# Parses comments with '##' and formats them nicely
help: ## Show help information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9._-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Work branch variables — fill in your branch names
ACTIONS_RUNNER_WORK_BRANCH           ?= loong64-v2.336.0
BUILDX_WORK_BRANCH                   ?= loong64-v0.35.0
CLI_WORK_BRANCH                      ?= loong64-v29.7.2
COMPOSE_WORK_BRANCH                  ?= loong64-v5.4.0
CONTAINERD_WORK_BRANCH               ?= loong64-v2.3.3
COREDNS_WORK_BRANCH                  ?= loong64-v1.14.2
CREATEREPO_WORK_BRANCH               ?= 1.2.4
CRI_TOOLS_WORK_BRANCH                ?= loong64-v1.36.0
ETCD_WORK_BRANCH                     ?= loong64-v3.6.8
GIT_WORK_BRANCH                      ?= loong64-v2.54.0
GITLAB_RUNNER_WORK_BRANCH            ?= loong64-v19.2.1
GRADLE_WORK_BRANCH                   ?= loong64-9.6.1
HTOP_WORK_BRANCH                     ?= loong64-3.5.2
JENKINS_WORK_BRANCH                  ?= loong64-2.575
KUBERNETES_WORK_BRANCH               ?= loong64-v1.36.1
MINIO_WORK_BRANCH                    ?= loong64-2026-02-12T20-18-48Z
MOBY_WORK_BRANCH                     ?= loong64-docker-v29.7.2
NEXUS_WORK_BRANCH                    ?= loong64-3.95.0
NODE_WORK_BRANCH                     ?= loong64-v24.18.0
NGINX_WORK_BRANCH                    ?= loong64-1.31.3
OSSUTIL_WORK_BRANCH                  ?= loong64-v1.7.19
PLUGINS_WORK_BRANCH                  ?= loong64-v1.9.1
REDIS_WORK_BRANCH                    ?= loong64-v8.8.0
RELEASE_WORK_BRANCH                  ?= loong64-v0.21.1
REPREPRO_WORK_BRANCH                 ?= reprepro-5.5.1
RUNC_WORK_BRANCH                     ?= loong64-v1.5.1
RUNNER_TOOLS_BASE_IMAGES_WORK_BRANCH ?= loong64-v0.0.47
TINI_WORK_BRANCH                     ?= loong64-master
VALKEY_WORK_BRANCH                   ?= loong64-9.1.1

# No source code involved
DEBIAN_WORK_BRANCH                   ?= main
DOT_GITHUB_WORK_BRANCH               ?= main
JDK_WORK_BRANCH                      ?= main
MAIN_WORK_BRANCH                     ?= main
MAVEN_WORK_BRANCH                    ?= main
TEMPLATE_WORK_BRANCH                 ?= main

# DCO control — set to true to list DCO per branch for all branches
DCO_ALL_BRANCHES ?= false

# Mark targets as phony (not actual files)
.PHONY: help dco dco-all checkout-all-main checkout-all-work

dco: ## Show unique DCO (Signed-off-by) from commit history
	@{ \
		if [ "$(DCO_ALL_BRANCHES)" = true ]; then \
			git for-each-ref --format="%(refname:short)" refs/heads/ | while read -r br; do \
				git log "$$br" --format="%(trailers:key=Signed-off-by,valueonly)"; \
			done; \
		else \
			git log --format="%(trailers:key=Signed-off-by,valueonly)"; \
		fi; \
	} | sort -u

dco-all: ## Show unique DCO from main repo and all submodules
	@{ \
		if [ "$(DCO_ALL_BRANCHES)" = true ]; then \
			git for-each-ref --format="%(refname:short)" refs/heads/ | while read -r br; do \
				echo "==> main ($$br)"; \
				git log "$$br" --format="%(trailers:key=Signed-off-by,valueonly)" | sort -u; \
			done; \
		else \
			echo "==> main ($$(git rev-parse --abbrev-ref HEAD))"; \
			git log --format="%(trailers:key=Signed-off-by,valueonly)" | sort -u; \
		fi; \
		git submodule foreach --recursive --quiet ' \
			if [ "$(DCO_ALL_BRANCHES)" = true ]; then \
				git for-each-ref --format="%(refname:short)" refs/heads/ | while read -r br; do \
					echo "==> $$name ($$br)"; \
					git log "$$br" --format="%(trailers:key=Signed-off-by,valueonly)" | sort -u; \
				done; \
			else \
				echo "==> $$name ($$(git rev-parse --abbrev-ref HEAD))"; \
				git log --format="%(trailers:key=Signed-off-by,valueonly)" | sort -u; \
			fi; \
		'; \
	} | sed 's/^/  /'

checkout-all-main: ## Checkout main branch for main repo and all submodules
	git checkout main
	git submodule foreach --recursive 'git checkout main || :'

checkout-all-work: ## Checkout work branch for main repo and all submodules
	git checkout $(MAIN_WORK_BRANCH)
	cd .github && git checkout $(DOT_GITHUB_WORK_BRANCH) || :
	cd actions-runner-loong64 && git checkout $(ACTIONS_RUNNER_WORK_BRANCH) || :
	cd buildx-loong64 && git checkout $(BUILDX_WORK_BRANCH) || :
	cd cli-loong64 && git checkout $(CLI_WORK_BRANCH) || :
	cd compose-loong64 && git checkout $(COMPOSE_WORK_BRANCH) || :
	cd containerd-loong64 && git checkout $(CONTAINERD_WORK_BRANCH) || :
	cd coredns-loong64 && git checkout $(COREDNS_WORK_BRANCH) || :
	cd createrepo && git checkout $(CREATEREPO_WORK_BRANCH) || :
	cd cri-tools-loong64 && git checkout $(CRI_TOOLS_WORK_BRANCH) || :
	cd etcd-loong64 && git checkout $(ETCD_WORK_BRANCH) || :
	cd git-loong64 && git checkout $(GIT_WORK_BRANCH) || :
	cd gitlab-runner-loong64 && git checkout $(GITLAB_RUNNER_WORK_BRANCH) || :
	cd htop-loong64 && git checkout $(HTOP_WORK_BRANCH) || :
	cd jenkins-loong64 && git checkout $(JENKINS_WORK_BRANCH) || :
	cd kubernetes-loong64 && git checkout $(KUBERNETES_WORK_BRANCH) || :
	cd minio-loong64 && git checkout $(MINIO_WORK_BRANCH) || :
	cd moby-loong64 && git checkout $(MOBY_WORK_BRANCH) || :
	cd nexus-loong64 && git checkout $(NEXUS_WORK_BRANCH) || :
	cd node-loong64 && git checkout $(NODE_WORK_BRANCH) || :
	cd nginx-loong64 && git checkout $(NGINX_WORK_BRANCH) || :
	cd ossutil-loong64 && git checkout $(OSSUTIL_WORK_BRANCH) || :
	cd plugins-loong64 && git checkout $(PLUGINS_WORK_BRANCH) || :
	cd redis-loong64 && git checkout $(REDIS_WORK_BRANCH) || :
	cd release-loong64 && git checkout $(RELEASE_WORK_BRANCH) || :
	cd reprepro && git checkout $(REPREPRO_WORK_BRANCH) || :
	cd runc-loong64 && git checkout $(RUNC_WORK_BRANCH) || :
	cd runner-tools-base-images-loong64 && git checkout $(RUNNER_TOOLS_BASE_IMAGES_WORK_BRANCH) || :
	cd template-loong64 && git checkout $(TEMPLATE_WORK_BRANCH) || :
	cd tini-loong64 && git checkout $(TINI_WORK_BRANCH) || :
	cd valkey-loong64 && git checkout $(VALKEY_WORK_BRANCH) || :
	cd debian-loong64 && git checkout $(DEBIAN_WORK_BRANCH) || :
	cd gradle-loong64 && git checkout $(GRADLE_WORK_BRANCH) || :
	cd jdk-loong64 && git checkout $(JDK_WORK_BRANCH) || :
	cd maven-loong64 && git checkout $(MAVEN_WORK_BRANCH) || :
