-- ====================
-- 偏元数学三公理 · Lean形式化验证
-- 验证时间: 2026-08-12 20:46 UTC+8
-- 验证平台: Lean 4 (live.lean-lang.org)
-- 作者: 陈松 (Song Chen)
-- ORCID: 0009-0002-9510-2239
-- ====================

import Mathlib

-- 公理一：原点是有方向的向量∂₀
structure OrientedOrigin where
  direction : ℝ × ℝ × ℝ
  zero_val : ℝ := 0

example : ∃ (o1 o2 : OrientedOrigin), o1.zero_val = o2.zero_val ∧ o1 ≠ o2 := by
  use ⟨(1,0,0), 0⟩, ⟨(0,1,0), 0⟩
  constructor
  · rfl
  · intro h
    have hdir := congrArg (λ o => o.direction) h
    simp at hdir

-- 公理二：减法不可清零 a-a=ε
abbrev PrenaryVal := ℝ × ℝ

def prenary_sub (a b : PrenaryVal) : PrenaryVal :=
  (a.1 - b.1, 0.0001)

example : prenary_sub (5,0) (5,0) ≠ (0,0) := by
  norm_num [prenary_sub]

-- 公理三：偏元等号≜
def prenary_eq (a b : PrenaryVal) (ε : ℝ) : Prop :=
  |a.1 - b.1| ≤ ε ∧ a.2 = b.2

example : prenary_eq (1.0, 0) (1.00005, 0) 0.0001 := by
  dsimp [prenary_eq]
  constructor
  · linarith
  · rfl

example : ¬ prenary_eq (1.0, 0) (1.0, 1) 0.0001 := by
  dsimp [prenary_eq]
  simp
