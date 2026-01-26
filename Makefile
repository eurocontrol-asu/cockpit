.PHONY: install check test format lint audit docs docs-build changelog clean help

# ─────────────────────────────────────────────────────────────────────────────
# Development Commands
# ─────────────────────────────────────────────────────────────────────────────

install:  ## Install all dependencies
	uv sync --all-groups

check: lint audit test  ## Run all checks (lint + security audit + tests)

lint:  ## Run linter and type checker
	uv run ruff check src tests
	uv run ruff format --check src tests
	uv run mypy src tests

format:  ## Format code
	uv run ruff format src tests
	uv run ruff check --fix src tests

test:  ## Run tests with coverage
	uv run pytest

test-fast:  ## Run tests without coverage
	uv run pytest --no-cov -x

audit:  ## Security audit dependencies
	uv run pip-audit

# ─────────────────────────────────────────────────────────────────────────────
# Documentation
# ─────────────────────────────────────────────────────────────────────────────

docs:  ## Serve documentation locally
	uv run mkdocs serve

docs-build:  ## Build documentation
	uv run mkdocs build

# ─────────────────────────────────────────────────────────────────────────────
# Release
# ─────────────────────────────────────────────────────────────────────────────

changelog:  ## Generate changelog with git-cliff
	git cliff -o CHANGELOG.md

# ─────────────────────────────────────────────────────────────────────────────
# CI Commands
# ─────────────────────────────────────────────────────────────────────────────

ci: install check test  ## Full CI pipeline

# ─────────────────────────────────────────────────────────────────────────────
# Cleanup
# ─────────────────────────────────────────────────────────────────────────────

clean:  ## Clean build artifacts
	rm -rf .pytest_cache .mypy_cache .ruff_cache coverage_html .coverage
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true

# ─────────────────────────────────────────────────────────────────────────────
# Help
# ─────────────────────────────────────────────────────────────────────────────

help:  ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
