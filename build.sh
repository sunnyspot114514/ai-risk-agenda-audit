#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
for f in report_zh report_en; do
  xelatex -interaction=nonstopmode -halt-on-error -output-directory=build "$f.tex" >/dev/null
  xelatex -interaction=nonstopmode -halt-on-error -output-directory=build "$f.tex" >/dev/null
  cp "build/$f.pdf" "$f.pdf"
done
cp report_zh.pdf ai_risk_agenda_zh.pdf
cp report_en.pdf ai_risk_agenda_en.pdf
