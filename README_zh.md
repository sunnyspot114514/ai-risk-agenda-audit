# 谁在设置 AI 风险议程？

这是一个基于公开来源的审计项目，追踪前沿 AI 安全生态中的资金、人才管道、第三方评估、风险证据生产与传播基础设施。

仓库提供两个平行版本：

- `ai_risk_agenda_zh.pdf` / `report_zh.tex`：中文版
- `ai_risk_agenda_en.pdf` / `report_en.tex`：英文版

两份报告共享同一套证据台账和机器可读数据。报告最后的实质章节统一为 **“限制与未决问题 / Limitations and Open Questions”**。

## 可复现文件

- `sources.csv`：来源编号、URL、证据等级与说明
- `claims.csv`：主张与来源映射、核验状态及限制
- `funding_edges.csv`：资金和组织关系边
- `evaluator_edges.csv`：evaluator 集中度 pilot 的 release-evaluator 边
- `metrics.csv`：派生集中度指标及其适用范围
- `source_ledger.tex`：嵌入两份 PDF 的可点击来源台账
- `TEXT_AUDIT.md`：依据 academic-humanizer 完成的文本审计和修改日志

## 编译

需要 XeLaTeX、EB Garamond、Noto Sans、Noto Serif CJK SC、TikZ/PGFPlots，以及 `report_style.tex` 中使用的 LaTeX 包。

```bash
./build.sh
```

构建脚本会将两份报告各编译两次，以稳定目录和页码引用。

## 证据约定

- **A**：官方申报、审计财务、官方 grant database、事故报告、system card 或同行评审研究
- **B**：组织自有透明度、项目、战略或政策页面
- **C**：可靠二手新闻
- **D**：仅用于公开职业履历
- **U**：尚未解决的线索

Grant、equity、employment、model access、evaluation contract、media fellowship 与 advocacy 被记录成不同关系类型。关系存在本身不被当作动机、控制或结论错误的证据。

## 设计与文本参考

视觉机制参考但未复制源码：

- https://github.com/Foadsf/vintage-latex
- https://github.com/jemmybutton/fiziko

文本审计参考：

- https://github.com/AIScientists-Dev/academic-humanizer

本仓库的报告样式从零编写，不包含任何字体文件。
