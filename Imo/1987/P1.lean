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

-- Mathlib version uses a lot of aux lemmas.
/--
Let $p_n(k)$ be the number of permutations of the set $\{1,2,3,\ldots,n\}$ which have exactly $k$ fixed points. Prove that $\sum_0^nk p_n(k)=n!$. -/
@[imo_problem_subject combinatorics]
theorem imo_1987_p1 (n : ℕ) (pₙ : ℕ → ℕ) (permutations : Finset (Fin n → Fin n)) (h₀ : 0 < n)
    -- Number of permutations is finite.
    (h₁ : ∀ p : Fin n → Fin n, p ∈ permutations ↔ p.Bijective)
    (h₂ :
      ∀ k,
        pₙ k =
          (permutations.filter fun f : Fin n → Fin n =>
              (Finset.univ.filter f.IsFixedPt).card = k).card) :
    ∑ k ∈ Finset.Icc 0 n, k * pₙ k = n ! := by
  sorry
