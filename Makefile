.DEFAULT_GOAL := help

.PHONY: help install lint check

help: ## Show available targets.
	@printf 'Usage: make <target>\n\nTargets:\n'
	@awk 'BEGIN {FS = ":.*## "} /^[a-zA-Z0-9_-]+:.*## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST) | LC_ALL=C sort

install: ## Install the pinned Markdown lint dependency.
	npm ci

lint: ## Lint all Markdown files.
	npm run lint:markdown

check: lint ## Run the complete verification contract.
