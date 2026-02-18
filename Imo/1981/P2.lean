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
Take $r$ such that $1\le r\le n$, and consider all subsets of $r$ elements of the set $\{1,2,\ldots,n\}$. Each subset has a smallest element. Let $F(n,r)$ be the arithmetic mean of these smallest elements. Prove that: $$F(n,r)={n+1\over r+1}.$$ -/
@[imo_problem_subject combinatorics]
theorem imo_1981_p2 (F : ℕ → ℕ → ℚ)
    (h₀ :
      ∀ (r n : ℕ) (S : Finset (Finset ℕ)) (h₁ : 1 ≤ r ∧ r ≤ n)
        (h₂ : S = (Finset.Icc 1 n).powersetCard r),
          -- untop' else will never be triggered.
          F n r = (∑ s ∈ S, s.min.untopD 0) / S.card) :
    ∀ n r, 1 ≤ r ∧ r ≤ n → F n r = (n + 1) / (r + 1) := by
  sorry
