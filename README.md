<h1 align="center">Cockpit</h1>

<p align="center">
  <strong>Control layer for ContrailNet data pipelines</strong>
</p>

<p align="center">
  <a href="https://github.com/eurocontrol-asu/cockpit/actions/workflows/ci.yml"><img src="https://github.com/eurocontrol-asu/cockpit/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
  <a href="https://codecov.io/gh/eurocontrol-asu/cockpit"><img src="https://codecov.io/gh/eurocontrol-asu/cockpit/graph/badge.svg" alt="Coverage"></a>
  <a href="https://eurocontrol-asu.github.io/cockpit"><img src="https://img.shields.io/badge/docs-live-brightgreen.svg" alt="Docs"></a>
  <a href="https://www.python.org/downloads/"><img src="https://img.shields.io/badge/python-3.12+-blue.svg" alt="Python 3.12+"></a>
  <a href="https://docs.pydantic.dev/"><img src="https://img.shields.io/badge/Pydantic-v2-E92063.svg" alt="Pydantic v2"></a>
  <a href="https://github.com/astral-sh/ruff"><img src="https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json" alt="Ruff"></a>
  <a href="https://opensource.org/licenses/EUPL-1.2"><img src="https://img.shields.io/badge/License-EUPL_1.2-blue.svg" alt="License"></a>
</p>

---

## Overview

Cockpit is the orchestration layer for **ContrailNet** pipelines, built on a modern Python data engineering stack:

| Component | Role |
|-----------|------|
| **Dagster** | Pipeline orchestration & data catalogue |
| **Pandera** | Data contracts & DataFrame validation |
| **Polars** | High-performance DataFrame processing |
| **Delta Lake** | ACID storage with time travel |

---

## Installation

```bash
git clone https://github.com/eurocontrol-asu/cockpit
cd cockpit
make install
```

---

## Development

```bash
make check   # Lint + Type Check + Tests + Security Audit
make test    # Run tests with coverage
make format  # Auto-format code
make docs    # Serve documentation locally
```

---

## Project Structure

```
src/cockpit/
├── core/       # Pipeline definitions
├── operators/  # Data transformation operators
└── resources/  # External resources (Delta Lake, MinIO)
```

---

## License

EUPL 1.2 - see [LICENSE](LICENSE) and [AMENDMENT](AMENDMENT) for details.