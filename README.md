[![DOI](https://zenodo.org/badge/1332100322.svg)](https://doi.org/10.5281/zenodo.21905724)

# 偏元数学三公理 · Lean 4 形式化验证

> **Prenary Mathematics Three Axioms — Formal Verification in Lean 4**

---

## 概述

本仓库包含偏元数学（Prenary Mathematics）三条核心公理在 **Lean 4**（v4.34.0-rc1 + Mathlib）中的完整形式化验证代码，并通过 **Comparator** 独立内核完成二次验证。

**结论：三公理全部通过，零错误。**

---

## 三公理

| 公理 | 名称 | 陈述 | Lean 状态 |
|:--|:--|:--|:--|
| 一 | 原点有方向 | 存在两个原点，数值相同但方向不同，它们不相等 | ✅ No goals |
| 二 | 减法不可清零 | a − a 永远不等于 (0, 0)，残余 ε 恒在 | ✅ No goals |
| 三 | 偏元等号 ≜ | ε 精度内相等且方向一致才成立；方向不同则不成立 | ✅ No goals |

---

## 验证记录

| 项目 | 结果 |
|:--|:--|
| **验证平台** | Lean 4.34.0-rc1 + Mathlib |
| **Playground 内核** | No goals（三公理全部通过） |
| **Comparator 独立验证** | Successfully validated |
| **Challenge Hash (SHA256)** | `b3c555a279b2aecab24f3369ebecca6941308e33a59e18aa436df36d77e55a6a` |
| **本地代码 SHA256** | `ba16d93613c60be25669cc19b61d92fbfb2ebc0536cdc8124647c28e0bb6a320` |
| **验证时间** | 2026-08-12 20:46 UTC+8 |
| **DOI** | [10.5281/zenodo.21905724](https://doi.org/10.5281/zenodo.21905724) |

---

## 文件

- `prenary_three_axioms.lean` — 三公理完整验证代码，含注释

---

## 复现

在 [Lean 4 Playground](https://live.lean-lang.org/) 中打开，将 `prenary_three_axioms.lean` 代码粘贴至编辑器，点击运行。或在本地安装 Lean 4 + Mathlib 后执行。

若使用 Comparator 复现，代码已通过 Challenge Hash 锁定——任何修改都会导致哈希不匹配。

---

## 作者

**陈松（Song Chen）**
- ORCID: [0009-0002-9510-2239](https://orcid.org/0009-0002-9510-2239)
- GitHub: [@falluck2025](https://github.com/falluck2025)
- 项目：偏元数学（Prenary Mathematics）
- 频道：老陈与AI的深夜实验室

---

## 许可

本仓库代码及相关文档采用 Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International（CC BY-NC-ND 4.0）许可。署名、非商业、禁止演绎。引用时请注明作者及 DOI。

---

——老陈与AI的深夜实验室 发布，请笑纳——
