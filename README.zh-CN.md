# 谁在设置 AI 风险议程？

[🇺🇸 English](README.md) | [🇨🇳 中文说明](README.zh-CN.md)

**一项关于前沿 AI 安全生态中资金、证据生产、评估机构集中度与传播基础设施的公开来源审计。**

本项目追踪一个可检验的问题：当少数资助者、人才项目、第三方 evaluator 和传播机构反复出现在同一领域时，这种结构会怎样影响风险议题的生产、复现与公众可见性？

分析基于公开申报、审计财务、官方 grant records、事故复盘、system card、机构披露、可靠新闻与同行评审研究。所有关系按类型记录；资金、就业、模型访问、评估合同、媒体 fellowship 与政策倡议不会被合并成同一种“关联”。

## 报告

- [中文版报告 — PDF，16 页](ai_risk_agenda_zh.pdf)
- [English report — PDF, 17 pages](ai_risk_agenda_en.pdf)
- [中文版 LaTeX 源码](report_zh.tex)
- [English LaTeX source](report_en.tex)

两种语言版本共享同一套证据台账和机器可读溯源数据。

## 核心材料

- [`sources.csv`](sources.csv)：来源编号、URL、证据等级与说明
- [`claims.csv`](claims.csv)：主张与来源映射、核验状态及限制
- [`funding_edges.csv`](funding_edges.csv)：资金与组织关系边
- [`evaluator_edges.csv`](evaluator_edges.csv)：选定模型 release family 与外部 evaluator 的关系
- [`metrics.csv`](metrics.csv)：集中度指标、计算结果与适用范围
- [`source_ledger.tex`](source_ledger.tex)：嵌入两份报告的可点击来源台账
- [`TEXT_AUDIT.md`](TEXT_AUDIT.md)：基于 academic-humanizer 的文本审计与修订记录
- [`preflight_zh.txt`](preflight_zh.txt) / [`preflight_en.txt`](preflight_en.txt)：中英文 PDF 的预检记录
- [`report_style.tex`](report_style.tex)：双语报告共用的 LaTeX 样式
- [`build.sh`](build.sh)：XeLaTeX 构建脚本

## 证据规则

| 等级 | 含义 |
|---|---|
| **A** | 官方申报、审计财务、官方 grant database、事故报告、system card 或同行评审研究 |
| **B** | 组织自身的透明度、项目、战略或政策页面 |
| **C** | 可靠二手新闻 |
| **D** | 仅用于公开职业履历 |
| **U** | 尚未完成一手核验的线索 |

关系边只证明公开资料中存在对应关系。涉及动机、编辑控制、研究质量或协调行为的更强判断，需要额外证据支持。

## 相关公共记录重建

- [Kevinnbass/Metr-Deep](https://github.com/kevinnbass/metr-deep)：一套独立的 METR 公共记录重建，覆盖资金、实物支持、模型访问、人员关系、治理条件与项目独立性；其流程包含逐行 provenance、对抗审计、claim gate，并严格区分不同 money type 与 legal entity。

本仓库将 `Metr-Deep` 作为交叉核验和方法论参照，而不把它当成一手材料的替代品。本文中的事实主张仍以原始公开记录或单独分级的来源为依据。

## 可复现性

报告中的派生指标保留明确 scope。例如，MATS donor HHI 只描述其 2025 年公开现金捐赠；evaluator HHI 只描述选定 OpenAI release-family pilot。尚未形成稳定估计的指标保持为空，而不会用案例材料代替大样本估计。

构建环境需要 XeLaTeX、EB Garamond、Noto Sans、Noto Serif CJK SC、TikZ/PGFPlots，以及 [`report_style.tex`](report_style.tex) 使用的 LaTeX 包：

```bash
./build.sh
```

脚本会分别编译中英文版本两次，使目录与页码引用稳定。GitHub Actions 也会从规范 LaTeX 源码重新构建两份 PDF，并检查英文版 17 页、中文版 16 页。

## 文本与设计

排版样式从零编写，视觉机制参考：

- [Foadsf/vintage-latex](https://github.com/Foadsf/vintage-latex)
- [jemmybutton/fiziko](https://github.com/jemmybutton/fiziko)

文本审计参考：

- [AIScientists-Dev/academic-humanizer](https://github.com/AIScientists-Dev/academic-humanizer)

仓库不包含字体文件。
