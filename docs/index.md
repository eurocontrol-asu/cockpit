# Cockpit

**Control layer for ContrailNet data pipelines**

## Stack

| Component | Role |
|-----------|------|
| **Dagster** | Pipeline orchestration & data catalogue |
| **Pandera** | Data contracts & DataFrame validation |
| **Polars** | High-performance DataFrame processing |
| **Delta Lake** | ACID storage with time travel |

## Getting Started

```bash
git clone https://github.com/eurocontrol-asu/cockpit
cd cockpit
make install
```

## Development

```bash
make check   # Lint + Tests + Audit
make docs    # Serve documentation
```
