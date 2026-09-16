# Who Sets the AI Risk Agenda?

Open-source audit of funding, evidence production, evaluator concentration, and communication
infrastructure in the frontier AI safety ecosystem.

This repository contains two parallel report editions:

- `ai_risk_agenda_en.pdf` / `report_en.tex` - English
- `ai_risk_agenda_zh.pdf` / `report_zh.tex` - 中文版

Both editions use the same evidence ledger and machine-readable data. The final substantive section in
each report is **Limitations and Open Questions / 限制与未决问题**.

## Reproducibility files

- `sources.csv` - source IDs, URLs, evidence grades, and notes
- `claims.csv` - claim-to-source mapping and claim status
- `funding_edges.csv` - typed funding and organizational edges
- `evaluator_edges.csv` - release/evaluator edges used in the evaluator concentration pilot
- `metrics.csv` - derived concentration measures and scope statements
- `source_ledger.tex` - clickable source ledger embedded in both PDFs
- `TEXT_AUDIT.md` - academic-humanizer audit and revision log

## Build

Requires XeLaTeX, EB Garamond, Noto Sans, Noto Serif CJK SC, TikZ/PGFPlots, and the LaTeX packages used
by `report_style.tex`.

```bash
./build.sh
```

The build script compiles each report twice so the table of contents and page references settle.

## Evidence conventions

- **A**: filings, audited financials, official grant databases, incident reports, system cards, or
  peer-reviewed research
- **B**: an organization's own transparency, program, strategy, or policy page
- **C**: reliable secondary journalism
- **D**: public career history only
- **U**: unresolved lead

Funding, equity, employment, model access, evaluation contracts, media fellowships, and advocacy are
stored as different relationship types. A network edge is not treated as evidence of motive or control.

## Design and editing references

The typesetting borrows visual mechanisms, not code, from:

- https://github.com/Foadsf/vintage-latex
- https://github.com/jemmybutton/fiziko

The prose audit adapts claim-evidence and academic AI-writing guidance from:

- https://github.com/AIScientists-Dev/academic-humanizer

The report style in this repository was written from scratch. No font files are included.
