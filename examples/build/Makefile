.DEFAULT_GOAL := help

.PHONY: help build install test test-race fmt fmt-check lint vuln check clean

help: ## Show available targets.
	@printf 'Usage: make <target>\n\nTargets:\n'
	@awk 'BEGIN {FS = ":.*## "} /^[a-zA-Z0-9_-]+:.*## / {printf "  %-14s %s\n", $$1, $$2}' $(MAKEFILE_LIST) | LC_ALL=C sort

build: ## Build all packages.
	go build ./...

install: ## Install the CLI.
	go install .

test: ## Run tests.
	go test ./...

test-race: ## Run tests with the race detector.
	go test -race ./...

fmt: ## Format Go source files.
	go tool golangci-lint fmt

fmt-check: ## Verify formatting without changing files.
	go tool golangci-lint fmt --diff

lint: ## Run static analysis.
	go tool golangci-lint run

vuln: ## Check dependencies and reachable code for known vulnerabilities.
	go tool govulncheck ./...

check: fmt-check lint test test-race build vuln ## Run the complete local verification contract.

clean: ## Remove local build artifacts.
	go clean
