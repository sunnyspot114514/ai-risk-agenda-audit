# Who Sets the AI Risk Agenda?

[🇺🇸 English](README.md) | [🇨🇳 中文说明](README.zh-CN.md)

**An open-source audit of funding, evidence production, evaluator concentration, and communication infrastructure in the frontier AI safety ecosystem.**

This project examines a testable structural question: when a small set of funders, talent programs, third-party evaluators, and communication institutions repeatedly appear in the same field, how does that structure affect the production, replication, and public visibility of AI-risk claims?

The analysis uses public filings, audited financial disclosures, official grant records, incident postmortems, system cards, organizational disclosures, reputable journalism, and peer-reviewed research. Relationships are typed rather than collapsed: funding, employment, model access, evaluation contracts, media fellowships, and policy advocacy are recorded separately.

## Reports

- [English report — PDF, 17 pages](ai_risk_agenda_en.pdf)
- [中文报告 — PDF, 16 pages](ai_risk_agenda_zh.pdf)
- [English LaTeX source](report_en.tex)
- [中文 LaTeX 源码](report_zh.tex)

Both editions use the same evidence ledger and machine-readable provenance data.

## Core materials

- [`sources.csv`](sources.csv) — source IDs, URLs, evidence grades, and notes
- [`claims.csv`](claims.csv) — claim-to-source mappings, verification status, and limitations
- [`funding_edges.csv`](funding_edges.csv) — funding and organizational relationships
- [`evaluator_edges.csv`](evaluator_edges.csv) — selected model release families and external evaluators
- [`metrics.csv`](metrics.csv) — concentration measures, derived values, and scope statements
- [`source_ledger.tex`](source_ledger.tex) — clickable source ledger embedded in both reports
- [`TEXT_AUDIT.md`](TEXT_AUDIT.md) — academic-humanizer text audit and revision log
- [`preflight_en.txt`](preflight_en.txt) / [`preflight_zh.txt`](preflight_zh.txt) — PDF preflight records
- [`report_style.tex`](report_style.tex) — shared LaTeX style for both editions
- [`build.sh`](build.sh) — XeLaTeX build script

## Evidence rules

| Grade | Meaning |
|---|---|
| **A** | Official filings, audited financials, official grant databases, incident reports, system cards, or peer-reviewed research |
| **B** | An organization's own transparency, program, strategy, or policy pages |
| **C** | Reputable secondary journalism |
| **D** | Public career history only |
| **U** | Lead not yet verified from a primary source |

A recorded edge establishes only that the relationship is supported by public evidence. Stronger claims about motive, editorial control, research quality, or coordination require separate evidence.

## Related public-records reconstructions

- [Kevinnbass/Metr-Deep](https://github.com/kevinnbass/metr-deep) — an independent public-records reconstruction of METR's funding, in-kind support, access, personnel relationships, governance conditions, and project independence. The pack uses row-level provenance, adversarial audits, a claim gate, and strict separation of money types and legal entities.

We cite `Metr-Deep` as a cross-check and methodological comparison, not as a substitute for primary evidence. Claims in this repository remain grounded in primary records or separately graded sources.

## Reproducibility

Derived metrics retain explicit scope. For example, the MATS donor HHI describes only its disclosed 2025 cash donations, while the evaluator HHI describes only the selected OpenAI release-family pilot. Metrics without a sufficiently stable estimate are left blank rather than inferred from a handful of cases.

Building the reports requires XeLaTeX, EB Garamond, Noto Sans, Noto Serif CJK SC, TikZ/PGFPlots, and the LaTeX packages used by [`report_style.tex`](report_style.tex):

```bash
./build.sh
```

The script compiles both editions twice so the table of contents and page references settle. The GitHub Actions workflow also rebuilds the PDFs from the canonical LaTeX sources and checks the expected 17-page English / 16-page Chinese outputs.

## Text and design

The report style was written from scratch. Visual mechanisms were inspired by:

- [Foadsf/vintage-latex](https://github.com/Foadsf/vintage-latex)
- [jemmybutton/fiziko](https://github.com/jemmybutton/fiziko)

The prose audit adapts claim-evidence and academic AI-writing guidance from:

- [AIScientists-Dev/academic-humanizer](https://github.com/AIScientists-Dev/academic-humanizer)

No font files are included in this repository.
