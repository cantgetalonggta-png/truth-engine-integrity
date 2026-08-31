# Truth Engine — Integrity Investigative System

Permanent, fully automated investigative validation ecosystem.

## Quick Start

```bash
# Run full integrity cycle (local)
python scripts/run_integrity_cycle.py

# NCD structural check
python scripts/ncd_structural.py historical.html live.html

# Deterministic diff
python scripts/deterministic_diff.py historical.html live.html
```

## Permanent Skill

This system is installed as a permanent skill at:
`/home/workdir/.grok/skills/integrity-investigative-system/`

It is available in every future session without keyword activation.

## Components

- Hybrid Graph RAG (Neo4j + LangChain)
- NCD Structural Metric
- Deterministic Diff Engine
- YARA Forensic Rules
- SystemGuardDaemon + Prometheus
- Envoy WASM Filter + Istio
- Argo Rollouts Canary
- GitHub Actions GitOps + Signature Gates
- Full 7-step Autonomous Integrity Cycle

See `docs/encyclopedia.md` for complete doctrine.
