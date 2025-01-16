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
Each of the six boxes $B_1$, $B_2$, $B_3$, $B_4$, $B_5$, $B_6$ initially contains one coin. The following operations are allowed

Type 1) Choose a non-empty box $B_j$, $1\leq j \leq 5$, remove one coin from $B_j$ and add two coins to $B_{j+1}$;

Type 2) Choose a non-empty box $B_k$, $1\leq k \leq 4$, remove one coin from $B_k$ and swap the contents (maybe empty) of the boxes $B_{k+1}$ and $B_{k+2}$.

Determine if there exists a finite sequence of operations of the allowed types, such that the five boxes $B_1$, $B_2$, $B_3$, $B_4$, $B_5$ become empty, while box $B_6$ contains exactly $2010^{2010^{2010}}$ coins.

[i]Proposed by Hans Zantema, Netherlands[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2010_p5
    -- Boxes → Next boxes → valid op
    (allowed_op : (ℕ → ℕ) → (ℕ → ℕ) → Prop)
    (h₀ : ∀ B B', allowed_op B B' ↔
      -- Type 1
      (∃ j, 1 ≤ j ∧ j ≤ 5 ∧ B j ≠ 0 ∧ B' = B - Pi.single j 1 + Pi.single (j + 1) 2) ∨
      -- Type 2
      (∃ k, 1 ≤ k ∧ k ≤ 4 ∧ B k ≠ 0 ∧ B' = B ∘ Equiv.swap (k + 1) (k + 2) - Pi.single k 1)) :
    -- time → (box-id → coins)
    (∃ (t : ℕ) (Bₜ : ℕ → ℕ → ℕ),
      0 < t ∧
      Bₜ 0 = 1 ∧
      (∀ tᵢ < t, allowed_op (Bₜ tᵢ) (Bₜ (tᵢ + 1))) ∧
      (∀ i ∈ Finset.Icc 1 5, Bₜ t i = 0) ∧
      Bₜ t 6 = 2010 ^ 2010 ^ 2010) ↔ answer(True) := by
  sorry
