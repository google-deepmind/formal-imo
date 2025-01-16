/-
Copyright 2025 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/

import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
Let $n$ be a positive integer. A Japanese triangle consists of $1 + 2 + ⋯ + n$ circles arranged in an equilateral triangular shape such that for each $i = 1, 2, ⋯ , n$, the $i$-th row contains exactly $i$ circles, exactly one of which is coloured red. A ninja path in a Japanese triangle is a sequence of $n$ circles obtained by starting in the top row, then repeatedly going from a circle to one of the two circles immediately below it and finishing in the bottom row. In terms of $n$, find the greatest $k$ such that in each Japanese triangle there is a ninja path containing at least $k$ red circles.
Solution: $k = \lfloor \log_{2} n \rfloor + 1$
-/
@[imo_problem_subject combinatorics]
theorem imo_2023_p5
    (n : ℕ)
    (is_japanese_triangle : (ℕ → ℕ → Prop) → Prop)
    (IsNinjaPath : (ℕ → ℕ → Prop) → Prop)
    (intersections : (ℕ → ℕ → Prop) → (ℕ → ℕ → Prop) → ℕ)
    (h₀ : 0 < n)
    (h₁ :
      ∀ IsRed : ℕ → ℕ → Prop,
        is_japanese_triangle IsRed ↔
          ∀ i : ℕ, 0 < i ∧ i ≤ n → ∃! j : ℕ, (0 < j ∧ j ≤ i) ∧ IsRed i j)
    (h₂ :
      ∀ Path : ℕ → ℕ → Prop,
        IsNinjaPath Path ↔
          (∀ i : ℕ, 0 < i ∧ i ≤ n → ∃! j : ℕ, (0 < j ∧ j ≤ i) ∧ Path i j) ∧
            ∀ i j : ℕ,
              0 < i ∧ i < n ∧ 0 < j ∧ j ≤ i ∧ Path i j → Path (i + 1) j ∨ Path (i + 1) (j + 1))
    (h₃ :
      ∀ IsRed : ℕ → ℕ → Prop,
        ∀ Path : ℕ → ℕ → Prop,
          intersections IsRed Path =
            Nat.card
              {ij : (Finset.Ioc 0 n).product (Finset.Ioc 0 n) |
                0 < ij.val.1 ∧
                  ij.val.1 ≤ n ∧
                    0 < ij.val.2 ∧
                      ij.val.2 ≤ ij.val.1 ∧ IsRed ij.val.1 ij.val.2 ∧ Path ij.val.1 ij.val.2}) :
    IsGreatest
      {k : ℕ |
        ∀ IsRed : ℕ → ℕ → Prop,
          is_japanese_triangle IsRed →
            ∃ Path : ℕ → ℕ → Prop, IsNinjaPath Path ∧ intersections IsRed Path ≥ k}
      answer(Nat.floor (Real.logb 2 n) + 1) := by
  sorry
