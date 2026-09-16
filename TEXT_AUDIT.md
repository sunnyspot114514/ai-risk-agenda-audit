# Academic-humanizer audit

This audit was applied to the earlier v0.9 draft before producing the Chinese and English 1.0 editions.
The editing rules were adapted from `AIScientists-Dev/academic-humanizer`, especially its guidance on
AI-writing tells, claim-evidence calibration, sentence length, and preservation of precise scholarly
hedging.

## Problems found in the earlier draft

1. **Defensive thesis framing.** Several sections opened with patterns such as "the conclusion is not X,
but Y". This made the prose sound argumentative before the evidence appeared.
   - Revision: sections now open with the observed relationship, number, or research question. Scope
     limitations are collected in the final limitations section unless they are necessary to interpret a
     specific statistic.

2. **Meta-emphasis instead of evidence.** The earlier draft repeatedly used phrases equivalent to
   "most important", "key", and "worth noting".
   - Revision: those phrases were removed. The sentence now states the number, source, or mechanism that
     makes the point important.

3. **Repeated contrast formulas.** The draft often relied on "not X / rather Y" and similar parallel
   structures.
   - Revision: claims are stated positively and directly. Contrast is kept only where two causal
     mechanisms genuinely need to be distinguished, such as the Irregular misconfiguration incidents
     versus the separate Hugging Face containment-circumvention incident.

4. **Clause-stacked sentences.** Some paragraphs chained several causal claims into one long sentence.
   - Revision: sentences were split so that funding, evaluation design, model behavior, and media framing
     are separate propositions with separate source support.

5. **Mixed evidentiary levels.** The earlier prose sometimes placed a primary-source grant record next to
   a secondary-media inference without making the difference visible.
   - Revision: evidence grades remain visible, and relationship types are recorded in CSV files. Verbs
     were softened where the source supports association or consistency rather than causal proof.

6. **Terminology drift.** Chinese prose alternated between translated terms and English technical terms
   without a stable convention.
   - Revision: technical terms that have useful field meanings, such as `scope`, `system card`, `HHI`,
     `evaluator`, and `framing`, are retained consistently; ordinary prose is localized.

7. **Limitations were scattered too early.** The earlier version contained a dedicated "what this report
   does not claim" section near the front.
   - Revision: the two 1.0 editions end with `Limitations and Open Questions / 限制与未决问题`. Local
     qualifications remain only where they change the interpretation of a specific result.

## Automated tell scan after revision

The final English TeX was scanned for common academic AI tells from the humanizer checklist, including:
`not only`, `not just`, `Importantly`, `Notably`, `Furthermore`, `Moreover`, `Additionally`, `delve`,
`underscore`, `pivotal`, `tapestry`, `seamless`, and em dashes. No matches remained.

The final Chinese TeX was scanned for recurrent formulaic patterns including `不是...而是`, `不仅`,
`值得注意`, `重要的是`, `关键的是`, `此外`, `进一步`, `这意味着`, and em dashes. Formulaic uses were removed. One source-attributed sentence retains two literal instances of `不是` because it accurately reports OpenAI's technical distinction (not a sophisticated sandbox escape and not a zero-day).

## Claim-evidence policy used in the final text

- Primary records support direct factual verbs: `reports`, `states`, `records`, `discloses`.
- Small samples support calibrated verbs: `suggests`, `is consistent with`, `supports a pilot estimate`.
- Network overlap is not converted into motive, editorial control, or causal coordination without a
  source that establishes that stronger relationship.
- All numerical claims retain their original scope. MATS HHI is labeled as MATS 2025 disclosed cash;
  evaluator HHI is labeled as a four-release-family OpenAI pilot; media SCI remains blank.
